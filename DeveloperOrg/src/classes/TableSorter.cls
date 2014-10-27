public class TableSorter{
public List<Account> accList{get;set;}
public TableSorter(){
    accList=[select Name,CreatedDate from Account];    
}

}