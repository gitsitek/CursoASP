CREATE VIEW [dbo].[vw_proveedores]
AS
SELECT        dbo.Proveedores.Id, dbo.Proveedores.Nombre, dbo.Proveedores.RFC, dbo.Proveedores.Moral, ISNULL(SUM(dbo.Adeudos.monto), 0) AS monto, dbo.Localidades.nombre AS Localidad, Localidades_1.nombre AS Estado
FROM            dbo.Proveedores INNER JOIN
                         dbo.Localidades ON dbo.Proveedores.localidad_id = dbo.Localidades.Id INNER JOIN
                         dbo.Localidades AS Localidades_1 ON dbo.Localidades.padre_id = Localidades_1.Id LEFT OUTER JOIN
                         dbo.Adeudos ON dbo.Proveedores.Id = dbo.Adeudos.proveedor_id
GROUP BY dbo.Proveedores.Id, dbo.Proveedores.Nombre, dbo.Proveedores.RFC, dbo.Proveedores.Moral, dbo.Localidades.nombre, Localidades_1.nombre

GO