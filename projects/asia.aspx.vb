
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub rptProjects_ItemDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.RepeaterItemEventArgs) Handles rptProjects.ItemDataBound
        If rptProjects.Items.Count < 1 Then
            If e.Item.ItemType = ListItemType.Footer Then
                Dim litEmpty As Literal = e.Item.FindControl("litEmpty")
                litEmpty.Visible = True
                ddlOrderBy.Visible = False
                ddlLocation.Visible = False
            End If
        End If
    End Sub

    Protected Sub ddlLocation_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlLocation.SelectedIndexChanged
        ddlOrderBy.SelectedValue = "Region"
        rptProjects.DataBind()
    End Sub

    Protected Sub ddlOrderBy_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlOrderBy.SelectedIndexChanged
        accDS.SelectCommand = "SELECT [ID], [Title], [User/Operator], [Contractor], [Location], [World Region], [Products Supplied], [Contract Type], [Complete] FROM contracts WHERE [World Region] = 'Asia' AND [Location] LIKE '%' + @Location + '%' ORDER BY [" + ddlOrderBy.SelectedValue + "];"
        rptProjects.DataBind()
    End Sub
End Class
