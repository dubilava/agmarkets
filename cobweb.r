require(data.table)
require(ggplot2)
## quantity

q <- c(0:100)


## demand

a1 <- 75
b1 <- -.5

p_d <- a1+b1*q

## supply

a2 <- 0
b2 <- 1

p_s <- a2+b2*q

m_dt <- data.table(q,p_s,p_d)

ggplot(m_dt,aes(x=q))+
  geom_line(aes(y=p_d),color="red")+
  geom_line(aes(y=p_s),color="blue")
