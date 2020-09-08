//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FBRPOS
{
    using System;
    using System.Collections.Generic;
    
    public partial class Transaction
    {
        public string TransactionNo { get; set; }
        public string FBRInvoiceNumber { get; set; }
        public Nullable<System.DateTime> TransactionDate { get; set; }
        public string TransactionType { get; set; }
        public string CategoryCode { get; set; }
        public string Customers { get; set; }
        public string SalesTaxNo { get; set; }
        public string ContactNo { get; set; }
        public string RegistrationAddress { get; set; }
        public string UserID { get; set; }
        public string ItemCode { get; set; }
        public string ItemName { get; set; }
        public Nullable<decimal> ItemPrice { get; set; }
        public Nullable<decimal> ItemQuantity { get; set; }
        public Nullable<decimal> ItemTotalAmount { get; set; }
        public Nullable<decimal> InvTotalAmount { get; set; }
        public string DiscountCode { get; set; }
        public Nullable<decimal> DiscountAmount { get; set; }
        public Nullable<decimal> TaxRate { get; set; }
        public Nullable<decimal> TaxAmount { get; set; }
        public string PaymentType { get; set; }
        public string TransactionClose { get; set; }
        public string TransactionsVoid { get; set; }
        public string VoidDescription { get; set; }
        public Nullable<System.DateTime> TransactionStartTime { get; set; }
        public Nullable<System.DateTime> TransactionEndTime { get; set; }
        public string DiscountName { get; set; }
        public string EmployeeCode { get; set; }
        public string EmployeeName { get; set; }
        public string NewRecord { get; set; }
    }
}
