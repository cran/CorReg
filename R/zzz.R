
.onLoad <- function(libname, pkgname) 
{
  library.dynam("CorReg", pkgname, libname)
}


CorRegStartupMessage <- function(){
  msg<-c(paste0("
                                                                                                                    
                                                                                                                    
          CCCCCCCCCCCCC                                         RRRRRRRRRRRRRRRRR                                         
        CCC::::::::::::C                                        R::::::::::::::::R                                          
       CC:::::::::::::::C                                       R::::::RRRRRR:::::R                                         
      C:::::CCCCCCCC::::C                                       RR:::::R     R:::::R                                        
      C:::::C       CCCCCC   ooooooooooo      rrrrr   rrrrrrrrr   R::::R     R:::::R     eeeeeeeeeeee       ggggggggg   ggggg
      C:::::C               oo:::::::::::oo   r::::rrr:::::::::r  R::::R     R:::::R   ee::::::::::::ee    g:::::::::ggg::::g
      C:::::C              o:::::::::::::::o  r:::::::::::::::::r R::::RRRRRR:::::R   e::::::eeeee:::::ee g:::::::::::::::::g
      C:::::C              o:::::ooooo:::::or r::::::rrrrr::::::r R:::::::::::::RR   e::::::e     e:::::eg::::::ggggg::::::gg
      C:::::C              o::::o     o::::o  r:::::r     r:::::r R::::RRRRRR:::::R  e:::::::eeeee::::::eg:::::g     g:::::g 
      C:::::C              o::::o     o::::o  r:::::r     rrrrrrr R::::R     R:::::R e:::::::::::::::::e g:::::g     g:::::g 
      C:::::C              o::::o     o::::o  r:::::r             R::::R     R:::::R e::::::eeeeeeeeeee  g:::::g     g:::::g 
      C:::::C       CCCCCC o::::o     o::::o  r:::::r             R::::R     R:::::R e:::::::e           g::::::g    g:::::g 
      C:::::CCCCCCCC::::C  o:::::ooooo:::::o  r:::::r           RR:::::R     R:::::R e::::::::e          g:::::::ggggg:::::g 
       CC:::::::::::::::C  o:::::::::::::::o  r:::::r           R::::::R     R:::::R  e::::::::eeeeeeee   g::::::::::::::::g 
        CCC::::::::::::C   oo:::::::::::oo    r:::::r           R::::::R     R:::::R   ee:::::::::::::e    gg::::::::::::::g 
          CCCCCCCCCCCCC      ooooooooooo      rrrrrrr           RRRRRRRR     RRRRRRR     eeeeeeeeeeeeee      gggggggg::::::g 
                                                                                                                     g:::::g 
                                                                                                         gggggg      g:::::g 
                                                                                                         g:::::gg   gg:::::g 
                                                                                                         g::::::ggg:::::::g 
                                                                                                          gg:::::::::::::g  
                                                                                                             ggg::::::ggg    
                                                                                                                gggggg       
          "
  ),"\n The Concept, the Method, the Power")
  return(msg)
}


.onAttach <- function(lib, pkg)
{
  # unlock .mclust variable allowing its modification
  # unlockBinding(".mclust", asNamespace("CorReg")) 
  # startup message
  msg <- CorRegStartupMessage()
  
  packageStartupMessage(msg)      
  invisible()
}


CorRegStartupMessage2 <- function(){
  msg<-c(paste0("

       * ***                            ***** ***                         
      *  ****  *                      ******  * **                         
     *  *  ****                      **   *  *  **                         
    *  **   **                      *    *  *   **                         
   *  ***          ****   ***  ****     *  *    *                          
  **   **         * ***  * **** **** * ** **   *       ***       ****      
  **   **        *   ****   **   ****  ** **  *       * ***     *  ***  *  
  **   **       **    **    **         ** ****       *   ***   *    ****   
  **   **       **    **    **         ** **  ***   **    *** **     **    
  **   **       **    **    **         ** **    **  ********  **     **    
   **  **       **    **    **         *  **    **  *******   **     **    
    ** *      * **    **    **            *     **  **        **     **    
     ***     *   ******     ***       ****      *** ****    * **     **    
      *******     ****       ***     *  ****    **   *******   ********    
       ***                         *    **     *     *****      *** ***   
                                   *                                 ***  
                                    **                         ****   *** 
                                                             *******  **  
                                                             *     ****    
  
          "
  ),"\n The Concept, the Method, the Power")
  return(msg)
}
