/*
  Warnings:

  - You are about to drop the column `pedido` on the `orden` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `orden` DROP COLUMN `pedido`;

-- CreateTable
CREATE TABLE `Pedido` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(191) NOT NULL,
    `precio` DOUBLE NOT NULL,
    `imagen` VARCHAR(191) NOT NULL,
    `cantidad` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `_OrdenToPedido` (
    `A` INTEGER NOT NULL,
    `B` INTEGER NOT NULL,

    UNIQUE INDEX `_OrdenToPedido_AB_unique`(`A`, `B`),
    INDEX `_OrdenToPedido_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `_OrdenToPedido` ADD CONSTRAINT `_OrdenToPedido_A_fkey` FOREIGN KEY (`A`) REFERENCES `Orden`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_OrdenToPedido` ADD CONSTRAINT `_OrdenToPedido_B_fkey` FOREIGN KEY (`B`) REFERENCES `Pedido`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
