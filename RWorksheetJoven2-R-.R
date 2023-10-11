x = seq(-5,5)
x
x <- 1:7.
x
seq(1, 3, by=0.2)
ages = c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
         22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
         24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
         18)
ages 
ages [3]
ages [c(2,4)]
ages[-c(4,12)]
x <- c("first"=3, "second"=0, "third"=9)
x[c("first", "third")]
x = c(-3:2)
x
x[2]<-0
x
"rivers"
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))
data
#The results are 141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708    135.0000   3710.0000
#8
#a
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

#e The  PowerRank result was change to 10 to 20 elements.
save(Power_Ranking, file = "Ranks.RData")
load("Ranks.RData")
#9
library(readxl)
hotels_vienna <- read_excel("hotels-vienna.xlsx")
View(hotels_vienna)
hotels_vienna
#b
dim(hotels_vienna)  #[1] 428  24

#c
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

#10
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
#[1] "cornonion"

#[[7]]
#[1] "corn"

#[[8]]
#[1] "eggplant"

#[[9]]
#[1] "carrot"

#[[10]]
#[1] "mushroom"





