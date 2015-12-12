print("hello world")

1234+5678 #加
28-39 #減
27*61 #乘
498/66 #除

3+7*4
(3+7)*4

10%/%7 #商數
10%%7 #餘數

2^3 #次方
sqrt(4) #平方根
8^(1/3) #立方根

sign(10) #判斷正負
sign(-10)
sign(8-10)
sign(0)

abs(-10) #絕對值

log(8) #log以e為底
log(8,2) #log以2為底
log2(8) #log以2為底
log10(10) #log以10為底

exp(10) #e(約為2.718281828)的十次方

1!=1
1>=1 && 2==2
1!=3 || 2<2

?sqrt


class(1)
class(1L) #末尾加上L，強制使用integer
class(1.2+1i)
class("1.2+3i")
class("g")
class(g) #error,文字前後要"，否則視為R的object
class(sqrt)

x<-1
assign("y",2) #變數名稱前後要"
z=3

exists("x")
ls()
rm(x)

c(1, 2, 3)
c(1.1+2i, TRUE, "test") # 全部都變成 character
c(1, TRUE) # 全部自動轉成 integer

x=c(3,4,5,6,7,8,9)
as.character(x)
as.logical(x)
as.numeric(c("1","2","A")) #a missing value

x[1] #R的index從1開始
x[2:4] #取出index 2,3,4的值

y=c(joe=12, vicky=14, bob=17)
print(y) #列出y, same as y
cat(y) #列出y的值
names(y) #列出y的names
y["joe"]
y[["joe"]] #只回傳值
y[c("joe","bob")]


a1=3:9 # a:b
a2=seq(13,27,3) # seq(b, e, by)

rep(1:4, 2)
rep(1:4, each = 2)       # not the same.
rep(1:4, c(2,2,2,2))     # same as second.
rep(1:4, c(2,1,2,1))
rep(1:4, each = 2, len = 4)    # first 4 only.
rep(1:4, each = 2, len = 10)   # 8 integers plus two recycled 1's.
rep(1:4, each = 2, times = 3)  # length 24, 3 complete replications

length(a1)
sum(a2)
a3=c(2:4,seq(9,18,6),rep(1,2))
sort(a3)
rank(a3)

a1+10
a2-a1 #error 
c(1, 2) + c(1, 2, 3, 4)  # 1+1, 2+2, 1+3, 2+4
a3*10
c(1, 2) * c(1, 2, 3, 4)  # 1*1, 2*2, 1*3, 2*4

x=as.numeric(c("1","2","A"))
print(x)
names(x)
sqrt(-1)
log(0)
1/0

x=1:3
y=4:6
z=rbind(x,y) #利用row合併
w=cbind(x,y) #利用column合併
array(0,c(2,3)) #產生2x3的陣列，元素值都為0
array(x,c(2,3)) #產生2x3的陣列，元素值由x的數值重複所產生

z[1,] #取第一個row
z[,1] #取第一個column

z+z
z*2
z-z*2 
z*z #相對應的陣列元素相乘
z/z #相對應的陣列元素相除
length(z) 
dim(z) #前者是row，後者是column

b1=matrix(1:6,nrow=2,ncol=3) #預設是按照column填入資料
print(b1)
b2=matrix(1:6,nrow=2,ncol=3,byrow=TRUE) #按照row填入資料
print(b2)

print(b1)
b1[1,1:2]  #選取第一列第一到二行

print(b1)
print(t(b1))

k1=c(1, 2, 4, 3, 1, 2, 3, 4,1)
factor(k1)
factor(k1, labels = c("二","一", "三", "四")) #可自訂 Level 的名稱。
factor(k1, ordered = TRUE) #ordered 代表可做排序
factor(c(1, 2, 1, NA, 2), exclude = NA) #可利用 exclude 排除特定資料。
factor(c(1, 2, 1, NA, 2), exclude = 2)
factor(c(1, 2, 1, NA, 2), exclude = NULL) #不排除任何資料。

which(k1 == 1)

d=list(n1=1,n2=TRUE,n3="test",n4=c(1,2,3))
names(d)
d$n2
d[[4]][1] #same as d$n4[1]
#d[[4]]取出第四個值，因為第四個值是向量，所以可以在取一次指標，取出向量的元素值。

name=c("Joe","Bob","Vicky")
age=c(28,26,34)
gender=c("Male","Male","Female")
d1=data.frame(name, age, gender)
names(d1)
d1$age #same as d1[,"age"] and d1[,2]
View(d1) #開啟資料d1的畫面。            
d1[1,2]=10 #更改單一資料

###### data.frame 常用相關函數
print(d1)
head(d1,2)
head(d1,-1)
tail(d1,1)
tail(d1,-1)

summary(d1)
table(d1$gender)
ncol(d1)
nrow(d1)

d2=cbind(a=1:3,pi=pi) #有dimnames的矩陣d2
attributes(d2)

## strip an object's attributes:
attributes(d2) <- NULL #去除物件屬性
print(d2) #回到單純的向量
class(d2) #仍有資料類別定義


