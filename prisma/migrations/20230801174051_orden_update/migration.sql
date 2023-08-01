/*
  Warnings:

  - You are about to alter the column `pedido` on the `orden` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Json`.

*/
-- AlterTable
ALTER TABLE `orden` MODIFY `pedido` JSON NOT NULL;
