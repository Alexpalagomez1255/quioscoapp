/*
  Warnings:

  - You are about to drop the `_ordentopedido` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `pedido` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `pedido` to the `Orden` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `_ordentopedido` DROP FOREIGN KEY `_OrdenToPedido_A_fkey`;

-- DropForeignKey
ALTER TABLE `_ordentopedido` DROP FOREIGN KEY `_OrdenToPedido_B_fkey`;

-- AlterTable
ALTER TABLE `orden` ADD COLUMN `pedido` JSON NOT NULL;

-- DropTable
DROP TABLE `_ordentopedido`;

-- DropTable
DROP TABLE `pedido`;
