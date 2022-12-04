CREATE TABLE `data_platform_batch_master_record_batch_data`
(
    `Product`               varchar(40) NOT NULL,
    `BusinessPartner`       int(12) NOT NULL,
    `Plant`                 varchar(4) NOT NULL,
    `Batch`                 varchar(10) NOT NULL,
    `ValidityStartDate`     date NOT NULL,
    `ValidityEndDate`       date NOT NULL,
    `CountryOfOrigin`       varchar(3) DEFAULT NULL,
    `ManufactureDate`       date DEFAULT NULL,
    `CreationDateTime`      datetime DEFAULT NULL,
    `LastChangeDateTime`    datetime DEFAULT NULL,
    `IsMarkedForDeletion`   tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `Product`, `Plant`, `Batch`),
    
    CONSTRAINT `DataPlatformBatchMasterRecordBatchDataProduct_fk` FOREIGN KEY (`Product`, `BusinessPartner`) REFERENCES `data_platform_product_master_business_partner_data` (`Product`, `BusinessPartner`),
    CONSTRAINT `DataPlatformBatchMasterRecordCountryOfOrigin_fk` FOREIGN KEY (`CountryOfOrigin`) REFERENCES `data_platform_country_country_data` (`Country`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
