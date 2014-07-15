
# ' Zc colSums(Z)
missing_penalty<-function(nbclust_vect=nbclust_vect,Z=Z,M=M,n=n,p=p,Zc=Zc){
   penalty=0
   penalty_vect=nbclust_vect*3-1#3 param�tres par classe mixmod mais somme des proportions � 1
   compl_vect=Zc+2#coef + constante+bruit
   used=rep(0,times=p)
   for (i in 1:n){
      used=0*used
      for(j in 1:p){
         if(M[i,j]==0){#variable observ�e
            if(Zc[j]==0){#variable � droite
               penalty=penalty+penalty_vect[j]
            }else{#variable � gauche
               penalty=penalty+compl_vect[j]#on compte la structure
            }
         }
      }
      quimankdroit=which(Z%*%(-(M[i,]-1))*M[i,]>0)
      penalty=penalty+penalty_vect[quimankdroit]
   }
   #variable � droite observ�e : mixmod compte � droite mais pas � gauche car sachant
   #variable � droite manquante : mixmod ne compte pas � droite car pas observ�e mais intervient dans la loi � gauche si la gauche est observ�e
   
   #vecteur binaire d'utilisation mis � jour � chaque ligne'
   penalty=log(n)*penalty/n#nombre moyen
   return(penalty)
}