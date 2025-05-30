package fr.kuremento.dnd.model.data;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Data
@Slf4j
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(schema = "dnd", name = "mapping", uniqueConstraints = {@UniqueConstraint(columnNames = {"FROM_CATEGORY", "TO_CATEGORY"})})
public class DataMapping {

    @Id
    @Column(name = "MAPPING_ID")
    private Long mappingId;

    @Column(name = "FROM_CATEGORY")
    private String fromCategory;

    @Column(name = "TO_CATEGORY")
    private String toCategory;

    @Column(name = "IS_CHECK_BOX")
    private boolean isCheckBox;

}
