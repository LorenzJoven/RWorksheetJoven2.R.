#THIS IS NUM 1
x = seq(-5,5)
x
#The output is [1] -5 -4 -3 -2 -1  0  1  2  3  4  5; The value starts from -5 up to 5 and by increasing 1 in value
x <- 1:7.
x
#The value of x is [1] 1 2 3 4 5 6 7

#THIS IS NUM 2
seq(1, 3, by=0.2)
#The output [1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0; The value starts from 1.0 up to 3.0 by increasing 0.2

#THIS IS NUM 3
ages = c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
         22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
         24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
         18)
ages 
ages [3]
#The value of the third element is [1] 22
ages [c(2,4)]
#The value of the second and fourth elements are [1] 28 36
ages[-c(4,12)]
#The output is as follows:
#[1] 34 28 22 36 27 1852 39 42 29 35 31 27 22 37 34 19 20 57 49 50 37 46 25 17
#[26] 37 43 53 41 51 35 24 33 41 53 40 18 44 38 41 48 27 39 19 30 61 54 58 26 18
#[1] 34 28 22 27 18 52 39 42 29 35 27 22 37 34 19 20 57 49 50 37 46 25 17 37 43
#[26] 53 41 51 35 24 3341 53 40 18 44 38 41 48 27 39 19 30 61 54 58 26 18

#THIS IS NUM 4
x <- c("first"=3, "second"=0, "third"=9)
x[c("first", "third")]
#The output is the words first and third, and under them is the number 3 and 9 that aligns with each word
#first third 
#3     9 

#THIS IS NUM 5
x = c(-3:2)
x
x[2]<-0
x
#The 2nd element which is -2 changes into 0
#[1] -3 -2 -1  0  1  2
#[1] -3  0 -1  0  1  2

#THIS IS NUM 6
month <- c("Jan", "Feb", "March", "Apr", "May", "June")
month
price_per_liter <- c(52.50,57.25,60.00,65.00,74.25,54.00)
price_per_liter
purchase_quantity <- c(25,30,40,50,10,45)
purchase_quantity
data.frame <- data.frame(month,  price_per_liter,  purchase_quantity)
data.frame
#[1] "Jan"   "Feb"   "March" "Apr"   "May"   "June" 
#[1] 52.50 57.25 60.00 65.00 74.2554.00
#[1] 25 30 40 50 10 45
#month price_per_liter purchase_quantity
#1   Jan           52.50                25
#2   Feb           57.25                30
#3 March           60.00                40
#4   Apr           65.00                50
#5   May           74.25                10
#6  June           54.00                4
weighted.mean(price_per_liter,purchase_quantity)
#The average fuel expenditure of Mr. Cruz from Jan to June is 59.2625

#THIS IS NUM 7
"rivers"
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))
data
#The results are 141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708    135.0000   3710.0000

#THIS IS NUM 8
#A
power_ranking <- c(1:25)
celebtrity_name <-c("Tom Cruise", "Rolling Stone", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", 
                    "Cast of Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas",
                    "Elton John", "David Letterman", "Phil Mickelson", "J.K Rowling", "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay   Lenon", "Celine Dion", "Kobe Bryant" )
pay <- c(67,90,225,110,90,332,302,41,52,88,55,44,55,40,233,34,40,47,75,25,39,45,32,40,31)

PowerRanking <- data.frame(power_ranking, celebtrity_name, pay)
PowerRanking
#b
power_ranking[19] <- 15
power_ranking 
pay[19] <- 90
pay

#c
csv_file <- "PowerRanking.csv"


write.csv(PowerRanking, file = csv_file)

PowerRankingCSV <- read.csv("PowerRanking.csv")

Power_Ranking <- PowerRankingCSV[10:20,]
Power_Ranking
#d
#                        power_ranking   celebtrity_name      pay
#           10            10                 Dan Brown        88
#           11            11              Bruce Springsteen   55
#           12            12                 Donald Trump     44
#           13            13                Muhammad Ali      55
#           14            14              Paul McCartney      40
#           15            15             George Lucas        233
#           16            16               Elton John         34
#           17            17             David Letterman      40
#           18            18              Phil Mickelson      47
#           19            19               J.K Rowling        75
#           20            20                Bradd Pitt        25

#E The  PowerRank result was change to 10 to 20 elements.
save(Power_Ranking, file = "Ranks.RData")
load("Ranks.RData")

#THIS IS NUM 9
library(readxl)
hotels_vienna <- read_excel("hotels-vienna.xlsx")
View(hotels_vienna)
hotels_vienna
#b
dim(hotels_vienna)  #[1] 428  24

#C
col <- colnames(hotels_vienna)
col
colnames1 <- col[c(1,6,7,8,22,24)]
colnames1 
#[1] "country"            "neighbourhood"      "price"              "city"            "accommodation_type"
#[6] "rating"

#d
save(hotels_vienna, file = "new.RData")
new <-load("new.RData")
View(new)

head(hotels_vienna, 6) 
# country city_actual rating_count center1label center2label neighbourhood price city   stars ratingta
# <chr>   <chr>       <chr>        <chr>        <chr>        <chr>         <dbl> <chr>  <dbl> <chr>   
#   1 Austria Vienna      36           City centre  Donauturm    17. Hernals      81 Vienna     4 4.5     
# 2 Austria Vienna      189          City centre  Donauturm    17. Hernals      81 Vienna     4 3.5     
# 3 Austria Vienna      53           City centre  Donauturm    Alsergrund       85 Vienna     4 3.5     
# 4 Austria Vienna      55           City centre  Donauturm    Alsergrund       83 Vienna     3 4       
# 5 Austria Vienna      33           City centre  Donauturm    Alsergrund       82 Vienna     4 3.5     
# 6 Austria Vienna      25           City centre  Donauturm    Alsergrund      229 Vienna     5 4.5  
tail(hotels_vienna, 6L)
# 1 Austria Vienna      53           City centre  Donauturm    Wieden           73 Vienna   3   3       
# 2 Austria Vienna      2            City centre  Donauturm    Wieden          109 Vienna   3   3       
# 3 Austria Vienna      145          City centre  Donauturm    Wieden          185 Vienna   5   4       
# 4 Austria Vienna      112          City centre  Donauturm    Wieden          100 Vienna   4   4.5     
# 5 Austria Vienna      169          City centre  Donauturm    Wieden           58 Vienna   3   3       
# 6 Austria Vienna      80           City centre  Donauturm    Wieden          110 Vienna   3.5 NA  

#THIS IS NUM 10
vegetables <- list("lettuce", "cucumber", "brocolli","potato", "garlic", "onion", "corn","eggplant", "carrot", "mushroom")

vegetables

#[[1]]
#[1] "lettuce"

#[[2]]
#[1] "cucumber"

#[[3]]
#[1] "brocolli"

#[[4]]
#[1] "potato"

#[[5]]
#[1] "garlic"

#[[6]]
#[1] "onion"

#[[7]]
#[1] "corn"

#[[8]]
#[1] "eggplant"

#[[9]]
#[1] "carrot"

#[[10]]
#[1] "mushroom"


#b Add 2 additional vegetables after the last vegetables in the list
addVegetables <- c(vegetables, "lady's finger", "peas")
addVegetables 


#[[1]]
#[1] "lettuce"

#[[2]]
#[1] "cucumber"

#[[3]]
#[1] "brocolli"

#[[4]]
#[1] "potato"

#[[5]]
#[1] "garlic"

#[[6]]
#[1] "cornonion"

#[[7]]
#[1] "corn"

#[[8]]
#[1] "eggplant"

#[[9]]
#[1] "carrot"

#[[10]]
#[1] "mushroom"

#[[11]]
#[1] "lady's finger"

#[[12]]
#[1] "peas"

#c Add 4 additional vegetables after index 5
addVegetables4 <- append(addVegetables, c("lettuce", "beansprouts", "radish", "celery"), after = 5)
addVegetables4

#[[1]]
#[1] "lettuce"

#[[2]]
#[1] "cucumber"

#[[3]]
#[1] "broccoli"

#[[4]]
#[1] "potato"

#[[5]]
#[1] "garlic"

#[[6]]
#[1] "lettuce"

#[[7]]
#[1] "beansprouts"

#[[8]]
#[1] "radish"

#[[9]]
#[1] "celery"

#[[10]]
#[1] "onion"

#[[11]]
#[1] "corn"

#[[12]]
#[1] "eggplant"

#[[13]]
#[1] "carrot"

#[[14]]
#[1] "mushroom"

#[[15]]
#[1] "lady's finger"

#[[16]]
#[1] "peas

num_vegetables <- length(addVegetables4)
num_vegetables 

# [1] 18

#Write the codes and its output.
addVegetablesR <- addVegetables4[-c(5,10,15)]
addVegetablesR 

#[[1]]
#[1] "lettuce"

#[[2]]
#[1] "cucumber"

#[[3]]
#[1] "brocolli"

#[[4]]
#[1] "potato"

#[[5]]
#[1] "lettuce"

#[[6]]
#[1] "beansprouts"

#[[7]]
#[1] "radish"

#[[8]]
#[1] "celery"

#[9]]
#[1] "corn"

#[[10]]
#[1] "eggplant"

#[[11]]
#[1] "carrot"

#[[12]]
#[1] "mushroom"

#[[13]]
#[1] "peas"

#[[14]]
#[1] "lady's finger"

#[[15]]
#[1] "peas"

num_addVegetablesR <- length(addVegetablesR)
num_addVegetablesR
#[1] 15

