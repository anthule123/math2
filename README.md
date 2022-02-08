# math2
bài toán về cái đồng hồ

NỘI DUNG CÂU HỎI
Một chiếc đồng hồ gồm ba kim: kim giờ, kim phút, kim giây với độ dài lần lượt là 10cm, 15cm, 20cm. Ba kim có chung một đầu gắn tại tâm đồng hồ, ba đầu còn lại chuyển động tạo thành một tam giác (có thể suy biến). Trong 12 tiếng từ 0h tới 12h cùng ngày, tỉ lệ thời gian mà tam giác này chứa tâm đồng hồ là bao nhiêu? Hãy đưa ra những đánh giá hợp lý cho giá trị này.

1. Visualize cho bài toán:
    https://editor.p5js.org/anthule2000/sketches/uISxg4XWi 
2. Giải thô sơ:
   Cách 1: lấy ra 10^6 trạng thái ngẫu nhiên của cái đồng hồ và lấy
   (số trường hợp tâm đồng hồ nằm trong tam giác)/10^6 là ra đc đáp số gần đúng.
   Cách 2: Chia đều 10^6 trạng thái từ 0h đến 12h thành 10^6 phần bằng nhau,
   rồi lấy (số trạng thái mà tâm đồng hồ nằm trong tam giác)/10^6 là ra đc đáp số gần đúng. Kq: 0.249917
3. Giải chính xác toán học
   Để ý rằng nếu đồng hồ chuyển từ trạng thái "tâm in" sang "tâm out" và
   ngược lại thì tâm đồng hồ sẽ nằm trên đoạn thẳng nối 2 trong 3 kim giờ, phút, giây.
   
   Công thức góc: góc của kim giờ sẽ là x từ 0->360 độ.
                  góc của kim phút sẽ là 12x.
                  góc của kim giây là 12*60x.
   VD: để kim giờ, kim phút đối nhau thì 
       hiệu số góc của 2 kim này sẽ là 360*k + 180.
       tức là sẽ giải phương trình kiểu như 
            12x - x = 180 
            <=> x = 180/11.
   Như vậy vì x bị chặn từ 0 đến 360 độ nên hiệu số góc giữa các kim 
   cũng sẽ bị chặn, nên ta có thể giải chính xác được các trường hợp
   mà 2 kim đối nhau và số trường hợp này là hữu hạn.
   Đặt X = tập các góc x như vậy, sắp xếp lại theo thứ tự tăng dần
   
   Như vậy, x_1 và x_2 là 2 phần từ liền kề trong X thì trạng thái 
   của đồng hồ trong khoảng góc [x_1, x_2] sẽ là toàn là "tâm in" 
   hoặc toàn là "tâm out". Ta chỉ việc kiểm tra trạng thái (x1+x2)/2
   là sẽ xác định được.
   
   Kết quả chính xác ra 6332386219007119/25332747903959040 xấp xỉ 
   0.24996839044.

Một số thủ thuật được sử dụng trong bài toán:
1. Kiểm tra xem 1 điểm có nằm trong tam giác không?

   Cách 1: diện tích: Lúc đầu mình kiểm tra điểm M nằm trong tam giác ABC
   bằng cách so sánh diện tích tam giác MAB+MAC+MBC 
   với ABC nhưng cách giải này có thể có sai số lúc diện
   tích tam giác.
   Cách 2: đây là cách giải được coi là tối ưu : cho 2 vector OA,OB.
   Kiểm tra xem hướng từ OA từ OB là ngược hay thuận chiều kim đồng hồ
   bằng công thức khá giống cách 1:
     https://stackoverflow.com/questions/2049582/how-to-determine-if-a-point-is-in-a-2d-triangle
   Như vậy, nếu M nằm trong tam giác ABC thì MA->MB->MC
   toàn là thuận kim đồng hồ hoặc toàn ngược kim đồng hồ.

2. Giải symbolic trên Matlab/Maple
   Để tính kết quả chính xác thì ta có thể sử dụng các ngôn ngữ lập trình
   mà cho phép giữ trạng thái phân số thay vì đổi ra số thập phân.
   VD: Maple, Matlab,vv.
   
3. Visualization
   p5.js là 1 trang hỗ trợ các công cụ vẽ hình và học JavaScript.
   The Coding Train là 1 kênh dạy code rất thú vị và có dạy JavaScript
   với p5.js 
   https://www.youtube.com/playlist?list=PLRqwX-V7Uu6Zy51Q-x9tMWIv9cueOFTFA
   Điểm khác biệt của khoá học này so với các khoá học code khác là
   nó có nhiều chương trình vẽ hình, animation,... rất hợp với các
   visualize learner.
   
   
   
   
   
   
   
   
  
