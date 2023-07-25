CREATE TABLE `data_platform_batch_master_record_batch_data`
(
    `Product`               varchar(40) NOT NULL,
    `BusinessPartner`       int(12) NOT NULL,
    `Plant`                 varchar(4) NOT NULL,
    `Batch`                 varchar(10) NOT NULL,
    `ValidityStartDate`     date NOT NULL,
    `ValidityStartTime`     time NOT NULL,
    `ValidityEndDate`       date NOT NULL,
    `ValidityEndTime`       date NOT NULL,
    `ManufactureDate`       date DEFAULT NULL,
    `CreationDate`          date NOT NULL,
    `CreationTime`          time NOT NULL,
    `LastChangeDate`        date NOT NULL,
    `LastChangeTime`        time NOT NULL,
    `IsMarkedForDeletion`   tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`, `Batch`),
    
    CONSTRAINT `DataPlatformBatchMasterRecordBatchDataProduct_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
