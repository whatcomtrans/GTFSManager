USE [GTFSManager]
GO
/****** Object:  View [dbo].[kml_shapes_withgeo]    Script Date: 06/04/2013 14:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[kml_shapes_withgeo]
AS
SELECT     dbo.kml_shapes_withfirstseq.shape_id, dbo.kml_shapes_withfirstseq.shape_pt_lat, dbo.kml_shapes_withfirstseq.shape_pt_lon, 
                      dbo.kml_shapes_withfirstseq.shape_pt_sequence, geography::Point(dbo.kml_shapes_withfirstseq.shape_pt_lat, dbo.kml_shapes_withfirstseq.shape_pt_lon, 4326) 
                      AS shape_pt, geography::Point(dbo.kml_shapes.shape_pt_lat, dbo.kml_shapes.shape_pt_lon, 4326) AS shape_pt_first
FROM         dbo.kml_shapes INNER JOIN
                      dbo.kml_shapes_withfirstseq ON dbo.kml_shapes.shape_id = dbo.kml_shapes_withfirstseq.shape_id AND 
                      dbo.kml_shapes.shape_pt_sequence = dbo.kml_shapes_withfirstseq.FirstSequence
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[27] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "kml_shapes"
            Begin Extent = 
               Top = 14
               Left = 498
               Bottom = 133
               Right = 684
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "kml_shapes_withfirstseq"
            Begin Extent = 
               Top = 6
               Left = 262
               Bottom = 148
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2145
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3765
         Alias = 2310
         Table = 2145
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'kml_shapes_withgeo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'kml_shapes_withgeo'
GO
