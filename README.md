# NavigationControllerAddTabbarController
UITabbarController嵌套UINavigationController使用
=================================
1.嵌套关系
---------------------------------------
　NavigationController将TabbarController作为根视图。<br>
　TabbarController将具体要展示的几个Controller作为ChildViewController，几个具体的Controller公用一个NavigationController来进行页面的跳转。
2.修改title、修改左右图片
---------------------------------------
　title和左右按钮不能像往常的写法写在相应的ViewController里，而应该写在TabbarController里。而且注意，不能写作self.navigationController.title = ...或者 self.navigationController.rightBarButtonItem = ...，因为此时的navigationController是nil,并不存在。这是由于只有push过来的ViewController才有这个属性，而TabbarController是NavigationController的rootViewController所以并不是push过来的，用 self.navigationItem.title 、self.navigationItem.rightBarButtonItem。navigationItem是ViewController的属性。<br>

    self.navigationItem.title  = @"1";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"information_nick"] style:UIBarButtonItemStyleDone target:self action:@selector(rightButtonClick:)];
