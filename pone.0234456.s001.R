###################################################################

#importing datasets [HIV_Data and PP_Data]
HIV_data=read.csv("C:/Users/Verrah/Google Drive/Research Work [PhD]/Drafts/Thesis Draft/Current Drafts_2019/Data Sets/HIV_Data Share with Vera/HIV_Data_2018.csv")
TB_data=read.csv("C:/Users/Verrah/Google Drive/Research Work [PhD]/Drafts/Thesis Draft/Current Drafts_2019/Data Sets/TB_Data Share with Vera/TB_Data_2018.csv")

#calulating the standard population
standard.HIV=HIV_data$PP_Total/6
standard.TB=TB_data$PP_Total/6

#computing the crude rates
cruderate.HIV_2012=sum(HIV_data$HIV_2012)/sum(HIV_data$PP_2012)
cruderate.HIV_2013=sum(HIV_data$HIV_2013)/sum(HIV_data$PP_2013)
cruderate.HIV_2014=sum(HIV_data$HIV_2014)/sum(HIV_data$PP_2014)
cruderate.HIV_2015=sum(HIV_data$HIV_2015)/sum(HIV_data$PP_2015)
cruderate.HIV_2016=sum(HIV_data$HIV_2016)/sum(HIV_data$PP_2016)
cruderate.HIV_2017=sum(HIV_data$HIV_2017)/sum(HIV_data$PP_2017)
cruderate.HIV_Total=sum(HIV_data$HIV_Total)/sum(HIV_data$PP_Total)

cruderate.TB_2012=sum(TB_data$TB_2012)/sum(TB_data$PP_2012)
cruderate.TB_2013=sum(TB_data$TB_2013)/sum(TB_data$PP_2013)
cruderate.TB_2014=sum(TB_data$TB_2014)/sum(TB_data$PP_2014)
cruderate.TB_2015=sum(TB_data$TB_2015)/sum(TB_data$PP_2015)
cruderate.TB_2016=sum(TB_data$TB_2016)/sum(TB_data$PP_2016)
cruderate.TB_2017=sum(TB_data$TB_2017)/sum(TB_data$PP_2017)
cruderate.TB_Total=sum(TB_data$TB_Total)/sum(TB_data$PP_Total)

#computing the expected incidence
expected.HIV_2012=cruderate.HIV_2012*standard.HIV
expected.HIV_2013=cruderate.HIV_2013*standard.HIV
expected.HIV_2014=cruderate.HIV_2014*standard.HIV
expected.HIV_2015=cruderate.HIV_2015*standard.HIV
expected.HIV_2016=cruderate.HIV_2016*standard.HIV
expected.HIV_2017=cruderate.HIV_2017*standard.HIV
expected.HIV_Total=cruderate.HIV_Total*standard.HIV

expected.TB_2012=cruderate.TB_2012*standard.TB
expected.TB_2013=cruderate.TB_2013*standard.TB
expected.TB_2014=cruderate.TB_2014*standard.TB
expected.TB_2015=cruderate.TB_2015*standard.TB
expected.TB_2016=cruderate.TB_2016*standard.TB
expected.TB_2017=cruderate.TB_2017*standard.TB
expected.TB_Total=cruderate.TB_Total*standard.TB

###################################################################

#computing the adjusted incidence rate
adj.HIV.2012=HIV_data$HIV_2012/expected.HIV_2012
adj.HIV.2013=HIV_data$HIV_2013/expected.HIV_2013
adj.HIV.2014=HIV_data$HIV_2014/expected.HIV_2014
adj.HIV.2015=HIV_data$HIV_2015/expected.HIV_2015
adj.HIV.2016=HIV_data$HIV_2016/expected.HIV_2016
adj.HIV.2017=HIV_data$HIV_2017/expected.HIV_2017
adj.HIV.total=HIV_data$HIV_Total/expected.HIV_Total

adj.TB.2012=TB_data$TB_2012/expected.TB_2012
adj.TB.2013=TB_data$TB_2013/expected.TB_2013
adj.TB.2014=TB_data$TB_2014/expected.TB_2014
adj.TB.2015=TB_data$TB_2015/expected.TB_2015
adj.TB.2016=TB_data$TB_2016/expected.TB_2016
adj.TB.2017=TB_data$TB_2017/expected.TB_2017
adj.TB.total=TB_data$TB_Total/expected.TB_Total

adj2012.cutoff=c(0,0.4,0.7,0.9,6)
adj2013.cutoff=c(0,0.4,0.7,0.9,6)
adj2014.cutoff=c(0,0.4,0.7,0.9,6)
adj2015.cutoff=c(0,0.4,0.7,0.9,6)
adj2016.cutoff=c(0,0.4,0.7,0.9,6)
adj2017.cutoff=c(0,0.4,0.7,0.9,6)
adjtotal.cutoff=c(0,0.4,0.7,0.9,6)

adj_HIV_2012=cut(adj.HIV.2012,breaks = adj2012.cutoff,include.lowest = TRUE,labels = c("0.00-0.40","0.41-0.70","0.71-0.99","1.00+"))
adj_HIV_2013=cut(adj.HIV.2013,breaks = adj2013.cutoff,include.lowest = TRUE,labels = c("0.00-0.40","0.41-0.70","0.71-0.99","1.00+"))
adj_HIV_2014=cut(adj.HIV.2014,breaks = adj2014.cutoff,include.lowest = TRUE,labels = c("0.00-0.40","0.41-0.70","0.71-0.99","1.00+"))
adj_HIV_2015=cut(adj.HIV.2015,breaks = adj2015.cutoff,include.lowest = TRUE,labels = c("0.00-0.40","0.41-0.70","0.71-0.99","1.00+"))
adj_HIV_2016=cut(adj.HIV.2016,breaks = adj2016.cutoff,include.lowest = TRUE,labels = c("0.00-0.40","0.41-0.70","0.71-0.99","1.00+"))
adj_HIV_2017=cut(adj.HIV.2017,breaks = adj2017.cutoff,include.lowest = TRUE,labels = c("0.00-0.40","0.41-0.70","0.71-0.99","1.00+"))
adj_HIV_total=cut(adj.HIV.total,breaks = adjtotal.cutoff,include.lowest = TRUE,labels = c("0.00-0.40","0.41-0.70","0.71-0.99","1.00+"))

adj_TB_2012=cut(adj.TB.2012,breaks = adj2012.cutoff,include.lowest = TRUE,labels = c("0.00-0.40","0.41-0.70","0.71-0.99","1.00+"))
adj_TB_2013=cut(adj.TB.2013,breaks = adj2013.cutoff,include.lowest = TRUE,labels = c("0.00-0.40","0.41-0.70","0.71-0.99","1.00+"))
adj_TB_2014=cut(adj.TB.2014,breaks = adj2014.cutoff,include.lowest = TRUE,labels = c("0.00-0.40","0.41-0.70","0.71-0.99","1.00+"))
adj_TB_2015=cut(adj.TB.2015,breaks = adj2015.cutoff,include.lowest = TRUE,labels = c("0.00-0.40","0.41-0.70","0.71-0.99","1.00+"))
adj_TB_2016=cut(adj.TB.2016,breaks = adj2016.cutoff,include.lowest = TRUE,labels = c("0.00-0.40","0.41-0.70","0.71-0.99","1.00+"))
adj_TB_2017=cut(adj.TB.2017,breaks = adj2017.cutoff,include.lowest = TRUE,labels = c("0.00-0.40","0.41-0.70","0.71-0.99","1.00+"))
adj_TB_total=cut(adj.TB.total,breaks = adjtotal.cutoff,include.lowest = TRUE,labels = c("0.00-0.40","0.41-0.70","0.71-0.99","1.00+"))

###################################################################

#redefining the dataset
data_prop=data.frame(County.ID=HIV_data$Sn.no,County=HIV_data$County,obs.HIV2012=HIV_data$HIV_2012,
                     obs.HIV2013=HIV_data$HIV_2013,obs.HIV2014=HIV_data$HIV_2014,
                     obs.HIV2015=HIV_data$HIV_2015,obs.HIV2016=HIV_data$HIV_2016,
                     obs.HIV2017=HIV_data$HIV_2017,obs.HIVtotal=HIV_data$HIV_Total,
                     obs.TB2012=TB_data$TB_2012,obs.TB2013=TB_data$TB_2013,
                     obs.TB2014=TB_data$TB_2014,obs.TB2015=TB_data$TB_2015,
                     obs.TB2016=TB_data$TB_2016,obs.TB2017=TB_data$TB_2017,
                     obs.TBtotal=TB_data$TB_Total,exp.HIV2012=expected.HIV_2012,
                     exp.HIV2013=expected.HIV_2013,exp.HIV2014=expected.HIV_2014,
                     exp.HIV2015=expected.HIV_2015,exp.HIV2016=expected.HIV_2016,
                     exp.HIV2017=expected.HIV_2017,exp.HIVtotal=expected.HIV_Total,
                     exp.TB2012=expected.TB_2012,exp.TB2013.TB=expected.TB_2013,
                     exp.TB2014=expected.TB_2014,exp.TB2015.TB=expected.TB_2015,
                     exp.TB2016=expected.TB_2016,exp.TB2017=expected.TB_2017,
                     exp.TBtotal=expected.TB_Total,adj.HIV.2012,adj.HIV.2013,
                     adj.HIV.2014,adj.HIV.2015,adj.HIV.2016,adj.HIV.2017,adj.HIV.total,
                     adj.TB.2012,adj.TB.2013,adj.TB.2014,adj.TB.2015,adj.TB.2016,
                     adj.TB.2017,adj.TB.total,adj_HIV_2012,adj_HIV_2013,adj_HIV_2014,
                     adj_HIV_2015,adj_HIV_2016,adj_HIV_2017,adj_HIV_total,adj_TB_2012,
                     adj_TB_2013,adj_TB_2014,adj_TB_2015,adj_TB_2016,adj_TB_2017,
                     adj_TB_total)

library(stats)
library(maps)       # Provides functions that let us plot the maps
library(maptools)
library(sp)
library(spdep)
library(spacetime)
library(mapdata)    # Contains the hi-resolution points that mark out the counties
library(rgdal)
library(sf)
library(RColorBrewer)

#reading .shp file
kenya=readOGR("C:/Users/Verrah/Google Drive/Research Work [PhD]/Drafts/Thesis Draft/Data Sets/NLTP Data [Vera]/County_Kenya/County.shp")
#spplot(kenya)
#Order based on the map
order=match(kenya$COUNTY,data_prop[,2])
data_pop=data_prop[order,]

library(epitools)
library(knitr)
library(plotrix)
library(stats)
library(spdep)
library(DCluster)


#merging .shp with .csv files
kenya.one=merge(kenya,data_pop,by.x="COUNTY",by.y="County")
data.kenya = attr(kenya.one, "data")


#spatial maps for the adjusted SIR
library(lattice)
require(latticeExtra)
library(gridExtra)
require(grid)


#display.brewer.all()
my.palette=brewer.pal(4, "YlOrRd")
trellis.par.set(axis.line=list(col=NA))

#HIV SIR maps
grid.arrange(spplot(kenya.one, zcol="adj_HIV_2012",col.regions=my.palette,
                    colorkey = list(space = "right", height= 1.0),cuts=2,main="2012",
                    par.settings=list(fontsize=list(text=12))),
             spplot(kenya.one, zcol="adj_HIV_2013",col.regions=my.palette,
                    colorkey = list(space = "right", height= 1.0),cuts=2,main="2013",
                    par.settings=list(fontsize=list(text=12))),
             spplot(kenya.one, zcol="adj_HIV_2014",col.regions=my.palette,
                    colorkey = list(space = "right", height= 1.0),cuts=2,main="2014",
                    par.settings=list(fontsize=list(text=12))),
             spplot(kenya.one, zcol="adj_HIV_2015",col.regions=my.palette, 
                    colorkey = list(space = "right", height= 1.0),cuts=2,main="2015",
                    par.settings=list(fontsize=list(text=12))),
             spplot(kenya.one, zcol="adj_HIV_2016",col.regions=my.palette,
                    colorkey = list(space = "right", height= 1.0),cuts=2,main="2016",
                    par.settings=list(fontsize=list(text=12))),
             spplot(kenya.one, zcol="adj_HIV_2017",col.regions=my.palette,
                    colorkey = list(space = "right", height= 1.0),cuts=2,main="2017",
                    par.settings=list(fontsize=list(text=12))),nrow=2,ncol=3)


#TB SIR maps
grid.arrange(spplot(kenya.one, zcol="adj_TB_2012",col.regions=my.palette,
                    colorkey = list(space = "right", height= 1.0),cuts=2,main="2012",
                    par.settings=list(fontsize=list(text=12))),
             spplot(kenya.one, zcol="adj_TB_2013",col.regions=my.palette,
                    colorkey = list(space = "right", height= 1.0),cuts=2,main="2013",
                    par.settings=list(fontsize=list(text=12))),
             spplot(kenya.one, zcol="adj_TB_2014",col.regions=my.palette,
                    colorkey = list(space = "right", height= 1.0),cuts=2,main="2014",
                    par.settings=list(fontsize=list(text=12))),
             spplot(kenya.one, zcol="adj_TB_2015",col.regions=my.palette, 
                    colorkey = list(space = "right", height= 1.0),cuts=2,main="2015",
                    par.settings=list(fontsize=list(text=12))),
             spplot(kenya.one, zcol="adj_TB_2016",col.regions=my.palette,
                    colorkey = list(space = "right", height= 1.0),cuts=2,main="2016",
                    par.settings=list(fontsize=list(text=12))),
             spplot(kenya.one, zcol="adj_TB_2017",col.regions=my.palette,
                    colorkey = list(space = "right", height= 1.0),cuts=2,main="2017",
                    par.settings=list(fontsize=list(text=12))),nrow=2,ncol=3)


###################################################################
library(INLA)
# Creating the INLA graph for adjacencies using the non-thinned shp file
adj_graph=poly2nb(kenya.one)
nb2INLA("kenya.graph", adj_graph)

#Creating the kenya.adj file with the INLA graph
kenya.adj=paste(getwd(),"/kenya.graph",sep="")

#Transforming the data to be in the right format for INLA
observed.HIV=as.vector(as.matrix(data_pop[,3:8]))#by column
observed.TB=as.vector(as.matrix(data_pop[,10:15]))#by column
expected.HIV=as.vector(as.matrix(data_pop[,17:22]))#by column
expected.TB=as.vector(as.matrix(data_pop[,24:29]))#by column
adj.HIV.rate=as.vector(as.matrix(data_pop[,31:36])) #by column
adj.TB.rate=as.vector(as.matrix(data_pop[,38:43])) #by column

Year=numeric(0)
for(i in 2012:2017){ 
  Year=append(Year,rep(i,dim(data_pop)[1]))
}
County=as.factor(rep(data_pop[,1],6))

Joint_data=data.frame(County.ID=as.numeric(County),Year.ID = Year,
                      O.HIV=observed.HIV,O.TB=observed.TB,
                      E.HIV=expected.HIV,E.TB=expected.TB,
                      SIR.HIV=adj.HIV.rate,SIR.TB=adj.TB.rate)

#reorganizng data
data=data.frame(County.ID=rep(Joint_data$County.ID,2),Year=rep(Joint_data$Year,2),
                Year.ID = rep(Joint_data$Year,2),
                County.Year.ID=rep(seq(1,length(rep(Joint_data$County.ID))),2))

data$Expected=with(Joint_data,c(E.HIV,E.TB))
data$Observed=with(Joint_data,c(O.HIV,O.TB))


#number of space-time units per disease
n.st=nrow(Joint_data)
data$Disease=rep(c("HIV","TB"),each=n.st)

#index for spatial counties ranges from 1 to 47
data$sp.idx=rep(1:47,6)

#index for time
data$tm.idx=data$Year-2011

#index for space-time interaction
data$sp.tm.idx=rep(seq(1,length(rep(Joint_data$County.ID))),2)

#indices for effects
data$dis.idx=rep(1:2,each=n.st)
data$intercept=as.factor(data$dis.idx)

#dummy indices for space, time and space-time
data$sp.dum=NA
data$tm.dum=NA
data$sp.tm.dum=data$County.Year.ID

#creating spatial indices for specific effects
data$sp.1=NA
data$sp.1[data$dis.idx==1]=data$sp.idx[data$dis.idx==1]
data$sp.2=NA
data$sp.2[data$dis.idx==2]=data$sp.idx[data$dis.idx==2]

#creating temporal indices for specific effects
data$tm.1=NA
data$tm.1[data$dis.idx==1]=data$tm.idx[data$dis.idx==1]
data$tm.2=NA
data$tm.2[data$dis.idx==2]=data$tm.idx[data$dis.idx==2]

#creating spatio-temporal indices for specific effects
data$sp.tm.1=NA
data$sp.tm.1[data$dis.idx==1]=data$sp.tm.idx[data$dis.idx==1]
data$sp.tm.2=NA
data$sp.tm.2[data$dis.idx==2]=data$sp.tm.idx[data$dis.idx==2]



###################################################################
#spatial adjacency matrix
w.sp=as(nb2mat(adj_graph,style="B",zero.policy=TRUE),"Matrix")

#temporal adjacency
w.tm=Diagonal(6,x=0)
w.tm[1,1+1]=1
w.tm[6,6-1]=1
for (i in 2:5) {
  w.tm[i,i-1]=1
  w.tm[i,i+1]=1
}

#prior for coefficients of copied effects
prior.beta.s=list(prior="normal",param=c(0,1/5.9), fixed=FALSE,
                  initial=0.01)
prior.beta.t=list(prior="normal",param=c(0,1/5.9), fixed=FALSE,
                  initial=0.01)
prior.beta.s.t=list(prior="normal",param=c(0,1/5.9), fixed=FALSE,
                    initial=0.01)

# Gamma prior on precision
file.saved <- "st_model_GAMMA.RData"
prior.prec = list(prior = "loggamma", param = c(0.5, 0.0005), initial = 0)


#indices for spatial disease specific effects
data$sp.idx1=data$sp.1
data$sp.idx2=data$sp.2

#indices for temporal disease specific effects
data$tm.idx1=data$tm.1
data$tm.idx2=data$tm.2

#indices for spatiotemporal disease specific effects
data$sp.tm.idx1=data$sp.tm.1
data$sp.tm.idx2=data$sp.tm.2


#scale models?
inla.scale=FALSE

formula=Observed~-1+intercept+
  f(sp.idx1,model="besag",graph=w.sp,scale.model=inla.scale,
    hyper=list(prec=prior.prec))+
  f(sp.idx2,model="besag",graph=w.sp,scale.model=inla.scale,
    hyper=list(prec=prior.prec))+
  f(sp.dum,model="besag",graph=w.sp,scale.model=inla.scale,
    hyper=list(prec=prior.prec))+
  f(sp.1,copy="sp.dum",range=c(0,Inf),hyper=list(beta=prior.beta.s))+
  f(sp.2,copy="sp.dum",range=c(0,Inf),hyper=list(beta=prior.beta.s))+
  f(tm.idx1,model="besag",graph=w.tm,scale.model=inla.scale,
    hyper=list(prec=prior.prec))+
  f(tm.idx2,model="besag",graph=w.tm,scale.model=inla.scale,
    hyper=list(prec=prior.prec))+
  f(tm.dum,model="besag",graph=w.tm,scale.model=inla.scale,
    hyper=list(prec=prior.prec))+
  f(tm.1,copy="tm.dum",range=c(0,Inf),hyper=list(beta=prior.beta.t))+
  f(tm.2,copy="tm.dum",range=c(0,Inf),hyper=list(beta=prior.beta.t))+
  f(sp.tm.idx1,model="iid",hyper=list(prec=prior.prec))+
  f(sp.tm.idx2,model="iid",hyper=list(prec=prior.prec))+
  f(sp.tm.dum,model="iid",hyper=list(prec=prior.prec))+
  f(sp.tm.1,copy="sp.tm.dum",range=c(0,Inf),hyper=list(beta=prior.beta.s.t))+
  f(sp.tm.2,copy="sp.tm.dum",range=c(0,Inf),hyper=list(beta=prior.beta.s.t))


model.inla=inla(formula,family="poisson",data=data,E=Expected,
                control.predictor=list(compute=TRUE),verbose=TRUE,
                control.compute=list(config=TRUE,dic=TRUE,cpo=TRUE),
                control.inla(strategy="laplace",npoints=21))
summary(model.inla)


###################################################################
#displaying specific and shared spatial efects
kenya.one$SHARED_C=exp(model.inla$summary.random$sp.dum[,"mean"])
kenya.one$HIV_C=exp(model.inla$summary.random$sp.idx1[,"mean"])
kenya.one$TB_C=exp(model.inla$summary.random$sp.idx2[,"mean"])

SHARED.cutoff=c(0,0.4,0.7,1,6)
HIV.cutoff=c(0,0.4,0.7,1,6)
TB.cutoff=c(0,0.4,0.7,1,6)
kenya.one$SHARED=cut(kenya.one$SHARED_C,breaks=SHARED.cutoff,include.lowest=TRUE,labels=c("0.00-0.40","0.41-0.70","0.71-1.00",">1.00"))
kenya.one$HIV=cut(kenya.one$HIV_C,breaks=HIV.cutoff,include.lowest=TRUE,labels=c("0.00-0.40","0.41-0.70","0.71-1.00",">1.00"))
kenya.one$TB=cut(kenya.one$TB_C,breaks=TB.cutoff,include.lowest=TRUE,labels=c("0.00-0.40","0.41-0.70","0.71-1.00",">1.00"))

library(lattice)
require(latticeExtra)
my.palette=brewer.pal(4,"YlOrRd")
trellis.par.set(axis.line=list(col=NA))
grid.arrange(spplot(kenya.one, zcol="SHARED",col.regions=my.palette,
                    colorkey = list(space = "right", height= 1.0),cuts=2,main="SHARED",
                    par.settings=list(fontsize=list(text=12))),
             spplot(kenya.one, zcol="HIV",col.regions=my.palette,
                    colorkey = list(space = "right", height= 1.0),cuts=2,main="HIV",
                    par.settings=list(fontsize=list(text=12))),
             spplot(kenya.one, zcol="TB",col.regions=my.palette,
                    colorkey = list(space = "right", height= 1.0),cuts=2,main="TB",
                    par.settings=list(fontsize=list(text=12))),ncol=3)

#posterior means of total spatial effect
kenya.one$Total.HIV_C=exp(model.inla$summary.random$sp.idx1[,"mean"]+
                            model.inla$summary.random$sp.1[,"mean"])

kenya.one$Total.TB_C=exp(model.inla$summary.random$sp.idx2[,"mean"]+
                           model.inla$summary.random$sp.2[,"mean"])

Total.HIV.cutoff=c(0,0.4,0.7,1,6)
Total.TB.cutoff=c(0,0.4,0.7,1,6)

kenya.one$Total.HIV=cut(kenya.one$Total.HIV_C,breaks=Total.HIV.cutoff,include.lowest=TRUE,labels=c("0.00-0.40","0.41-0.70","0.71-1.00",">1.00"))
kenya.one$Total.TB=cut(kenya.one$Total.TB_C,breaks=Total.TB.cutoff,include.lowest=TRUE,labels=c("0.00-0.40","0.41-0.70","0.71-1.00",">1.00"))


grid.arrange(spplot(kenya.one, zcol="Total.HIV",col.regions=my.palette,
                    colorkey = list(space = "right", height= 1.0),cuts=6,
                    main="HIV Combined spatial patterns",
                    par.settings=list(fontsize=list(text=12))),
             spplot(kenya.one, zcol="Total.TB",col.regions=my.palette,
                    colorkey = list(space = "right", height= 1.0),cuts=5,
                    main="TB combined spatial patterns",
                    par.settings=list(fontsize=list(text=12))),ncol=2)

#Temporal trends
library(car)
par(mfrow=c(2,2))
plot(2012:2017,exp(model.inla$summary.random$tm.dum[,"mean"]),ylim=c(0.0,2.0),
     type="l",main="Shared temporal trend",cex.lab=1.2,xlab="(a)",ylab="",
     frame=FALSE,col="black",lty=1,lwd=2)
title(ylab="Relative Risk",line=1.9,cex.lab=1.2)
lines(2012:2017,exp(model.inla$summary.random$tm.dum[,"0.025quant"]),
      type="l",col="black",lty=3,lwd=0.5)
lines(2012:2017,exp(model.inla$summary.random$tm.dum[,"0.975quant"]),
      type="l",col="black",lty=3,lwd=0.5)


plot(2012:2017,exp(model.inla$summary.random$tm.idx1[,"mean"]),ylim=c(0.8,1.2),
     type="l",main="HIV temporal trend",cex.lab=1.2,xlab="(b)",ylab="",
     frame=FALSE,col="red",lty=1,lwd=2)
title(ylab="Relative Risk",line=1.9,cex.lab=1.2)
lines(2012:2017,exp(model.inla$summary.random$tm.idx1[,"0.025quant"]),
      type="l",col="red",lty=3,lwd=0.5)
lines(2012:2017,exp(model.inla$summary.random$tm.idx1[,"0.975quant"]),
      type="l",col="red",lty=3,lwd=0.5)


plot(2012:2017,exp(model.inla$summary.random$tm.idx2[,"mean"]),ylim=c(0.8,1.2),
     type="l",main="TB temporal trend",cex.lab=1.2,xlab="(c)",ylab="",
     frame=FALSE,col="blue",lty=1,lwd=2)
title(ylab="Relative Risk",line=1.9,cex.lab=1.2)
lines(2012:2017,exp(model.inla$summary.random$tm.idx2[,"0.025quant"]),
      type="l",col="blue",lty=3,lwd=0.5)
lines(2012:2017,exp(model.inla$summary.random$tm.idx2[,"0.975quant"]),
      type="l",col="blue",lty=3,lwd=0.5)
#posterior means of total temporal effect
#dev.new()
#par(mfrow=c(1,1))
plot(2012:2017,exp(model.inla$summary.random$tm.idx1[,"mean"]+
                     model.inla$summary.random$tm.1[,"mean"]),ylim=c(0.5,1.6),
     main="Combined temporal trend",cex.lab=1.5,type="l",pch=19,cex=0.5,xlab="(d)",
     ylab="",frame=FALSE,col="red",lty=1,lwd=2)
title(ylab="Relative Risk",line=1.9,cex.lab=1.2)
lines(2012:2017,exp(model.inla$summary.random$tm.idx1[,"0.025quant"]+
                      model.inla$summary.random$tm.1[,"0.025quant"]),
      type="l",col="red",lty=3,lwd=0.5)
lines(2012:2017,exp(model.inla$summary.random$tm.idx1[,"0.975quant"]+
                      model.inla$summary.random$tm.1[,"0.975quant"]),
      type="l",col="red",lty=3,lwd=0.5)

lines(2012:2017,exp(model.inla$summary.random$tm.idx2[,"mean"]+
                      model.inla$summary.random$tm.2[,"mean"]),
      type="l",col="blue",pch=19,cex=0.5,lty=1,lwd=2)
lines(2012:2017,exp(model.inla$summary.random$tm.idx2[,"0.025quant"]+
                      model.inla$summary.random$tm.2[,"0.025quant"]),
      type="l",col="blue",lty=3,lwd=0.5)
lines(2012:2017,exp(model.inla$summary.random$tm.idx2[,"0.975quant"]+
                      model.inla$summary.random$tm.2[,"0.975quant"]),
      type="l",col="blue",lty=3,lwd=0.5)
legend(2012,1.6,legend=c("HIV","TB"),col=c("red", "blue"),lwd=2,lty=1,cex=0.8)

###################################################################

#Space-Time Interaction[SHARED]
delta_s=data.frame(delta_s=model.inla$summary.random$sp.tm.dum[,2],
                   Year=data$tm.dum,County.ID=data$sp.dum)
delta.matrix_s=matrix(delta_s[,1], 47,6,byrow=FALSE)
rownames(delta.matrix_s)=delta_s[1:47,6]


#Space time probability>1 [SHARED]
a=0
inlaprob.delta_s=lapply(model.inla$marginals.random[[9]], function(X){
  1-inla.pmarginal(a, X)
})
pp.delta_s=unlist(inlaprob.delta_s)

pp.cutoff.interaction=c(0,0.25,0.50,0.75,Inf)

pp.delta.matrix_s=matrix(pp.delta_s, 47,6,byrow=FALSE)
pp.delta.factor_s=data.frame(County=data.kenya$COUNTY)
for(i in 1:6){
  pp.delta.factor.temp_s=cut(pp.delta.matrix_s[,i],breaks=pp.cutoff.interaction,
                             include.lowest=TRUE,labels = c("0.00-0.25","0.26-0.50","0.51-0.75","0.76-1.00")) 
  pp.delta.factor_s=cbind(pp.delta.factor_s,pp.delta.factor.temp_s)
}
colnames(pp.delta.factor_s)=c("County",seq(212,217))


library(lattice)
library(graphics)
#Maps
attr(kenya, "data")=data.frame(data.kenya, pp.delta.factor_s)
my.palette=brewer.pal(4, "YlGn")
grid.arrange(spplot(obj=kenya, zcol="X212", col.regions=my.palette, cuts=2,
                    colorkey = list(space = "right", height= 1.0),
                    main="2012",par.settings=list(fontsize=list(text=12))),
             spplot(obj=kenya, zcol="X213", col.regions=my.palette, cuts=2,
                    colorkey = list(space = "right", height= 1.0),
                    main="2013",par.settings=list(fontsize=list(text=12))),
             spplot(obj=kenya, zcol="X214", col.regions=my.palette, cuts=2,
                    colorkey = list(space = "right", height= 1.0),
                    main="2014",par.settings=list(fontsize=list(text=12))),
             spplot(obj=kenya, zcol="X215", col.regions=my.palette, cuts=2,
                    colorkey = list(space = "right", height= 1.0),
                    main="2015",par.settings=list(fontsize=list(text=12))),
             spplot(obj=kenya, zcol="X216", col.regions=my.palette, cuts=2,
                    colorkey = list(space = "right", height= 1.0),
                    main="2016",par.settings=list(fontsize=list(text=12))),
             spplot(obj=kenya, zcol="X217", col.regions=my.palette, cuts=2,
                    colorkey = list(space = "right", height= 1.0),
                    main="2017",par.settings=list(fontsize=list(text=12))),
             nrow=2,ncol=3)
###################################################################