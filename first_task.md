##### 1：按顺序打印出App、ViewController生命周期的各个事件

App：Not running、Inactive、Active、Background、Suspended。

ViewController：alloc/init、loadView、viewDidLoad、viewWillAppear、viewDidAppear、viewWillDisappear、viewDidDisappear、dealloc。

##### 2：写出五种常用的控件

UIScrollView、UITableView、UICollectionView、UIWebView、WKWebView。

##### 3：列举出三个 UITableViewDelegate 声明的方法

- 选中某⾏cell：

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath

- ⾃定义每组头部的view 需要使⽤到UITableViewHeaderFooterView：

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section;

- ⾃定义每组尾部的View 需要使⽤到UITableViewHeaderFooterView：

-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section;