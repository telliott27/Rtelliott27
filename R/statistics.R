
#' @export
hypo2.prop<-function(p1,n1,p2,n2,alpha=0.05,tail=2) {
  #tail : -1 = lower tail, 1 = upper tail, 2 = two-tailed
  pp<-signif((p1*n1+p2*n2)/(n1+n2),3)
  stderr<-signif(se2.prop(pp,n1,pp,n2),3)
  tstat<-round((p1-p2)/stderr,3)
  df<-n1+n2-2
  if( tail == 2 ) {
    if( tstat < 0 ) {
      pvalue<-pt(tstat,df)*2
    } else {
      pvalue<-pt(tstat,df,lower.tail=FALSE)*2
    }
    p<-1-(alpha/2)
  } else if (tail == -1) {
    p<-alpha
    pvalue<-pt(tstat,df)
  } else {
    pvalue<-pt(tstat,df,lower.tail=FALSE)
    p<-1-alpha
  }
  rs<-list()
  rs[["tstat"]]<-tstat
  rs[["pvalue"]]<-pvalue
  rs[["se"]]<-stderr
  rs[["pp"]]<-pp
  rs[["tail"]]<-tail
  rs[["df"]]<-df
  return(rs)
}

se2.prop<-function(p1,n1,p2,n2) {
  return(sqrt((p1*(1-p1)/n1)+(p2*(1-p2)/n2)))
}
