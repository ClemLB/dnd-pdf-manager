package fr.kuremento.dnd;

import fr.kuremento.dnd.model.Constantes;
import lombok.AccessLevel;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.batch.core.*;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.batch.core.repository.JobExecutionAlreadyRunningException;
import org.springframework.batch.core.repository.JobInstanceAlreadyCompleteException;
import org.springframework.batch.core.repository.JobRestartException;
import org.springframework.boot.ExitCodeGenerator;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@Slf4j
@SpringBootApplication
public class Application implements ExitCodeGenerator {

    @Setter(AccessLevel.PRIVATE)
    private JobExecution jobExecution;

    public static void main(String[] args) throws JobInstanceAlreadyCompleteException, JobExecutionAlreadyRunningException, JobParametersInvalidException, JobRestartException {
        if (args.length == 0) {
            log.error("Merci d'indiquer un fichier PDF en entrée");
            System.exit(1);
        }
        try (ConfigurableApplicationContext context = SpringApplication.run(Application.class, args)) {
            var appBean = context.getBean(Application.class);
            var job = context.getBean(Job.class);
            var jobLauncher = context.getBean(JobLauncher.class);
            var jobParameters = new JobParametersBuilder().addString(Constantes.JobParameters.ID, String.valueOf(System.currentTimeMillis()))
                                                          .addString(Constantes.JobParameters.INPUT_FILE, args[args.length - 1])
                                                          .toJobParameters();
            appBean.setJobExecution(jobLauncher.run(job, jobParameters));
            System.exit(SpringApplication.exit(context, appBean));
        }
    }

    @Override
    public int getExitCode() {
        var exitStatus = jobExecution.getExitStatus();
        if (ExitStatus.FAILED.getExitCode().equals(exitStatus.getExitCode())) {
            return 2;
        } else if (new ExitStatus("COMPLETED_WITH_ERRORS").getExitCode().equals(exitStatus.getExitCode())) {
            return 1;
        }
        return 0;
    }
}
