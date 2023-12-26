permissionset 50100 MyPermission
{
    Assignable = true;
    Permissions = tabledata ItemInventory = RIMD,
        tabledata SaleOrderLineWithImage = RIMD,
        table ItemInventory = X,
        table SaleOrderLineWithImage = X,
        page CheckItemInventory = X,
        page getCustomerInfo = X,
        page GetCustomerInfors = X,
        page GetItemLists = X,
        page GetSaleOrderLine = X,
        page GetSaleOrders = X,
        page ItemWithImage = X,
        page PageSaleLineWithImage = X,
        page "Picture Encoded Text Dialog" = X,
        query getItemPreviewText = X,
        query ItemInventory = X,
        query QueryItemInSalesOrderLine = X,
        query queryItemtable = X,
        query SelectItemInfor = X;
}