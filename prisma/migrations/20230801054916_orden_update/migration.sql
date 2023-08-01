/*
  Warnings:

  - Added the required column `pedido` to the `Orden` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `orden` ADD COLUMN `pedido` JSON NOT NULL;
