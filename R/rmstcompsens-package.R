#' @name rmstcompsens-package
#' @aliases  rmstcompsens-package
#' @docType  package
#' @title Comparing restricted mean survival time when survival curves have divergent tails
#' @description Performs two-sample comparisons using the restricted mean survival time (RMST) when survival curves end at different time points between groups.
#' This package implements a sensitivity approach that allows the threshold  timepoint tau to be specified after the longest survival time in the shorter survival group.
#' Two kinds of between-group contrast estimators (the difference in RMST and the ratio of RMST) are computed.
#'
#' @author Kentaro Ueno, Satoshi Morita
#'
#' Maintainer: Kentaro Ueno <ueno_kentaro@kuhp.kyoto-u.ac.jp>
#' @references Uno H, Claggett B, Tian L, Inoue E, Gallo P, Miyata T, Schrag D,
#' Takeuchi M, Uyama Y, Zhao L, Skali H, Solomon S, Jacobus S, Hughes M,
#' Packer M, Wei LJ. Moving beyond the hazard ratio in quantifying the between-group difference in survival analysis. Journal of clinical Oncology 2014, 32, 2380-2385.
#'
#' Hajime Uno, Lu Tian, Miki Horiguchi, Angel Cronin, Chakib Battioui and James Bell (2020). survRM2: Comparing Restricted
#' Mean Survival Time. R package version 1.0-3. https://CRAN.R-project.org/package=survRM2

#' @keywords
#' survival
#' @seealso
#' survival survRM2
#' @import  survival dplyr
#' @importFrom stats pnorm qnorm time
#' @examples
#' #--- sample data ---#
#' time  <- c(0.7,1.6,3.1,4.5,7.6,11,13.5,18.6,22.7,26.5,0.4,2.2,2.9,3.8,5.2,8.6,9.8,10.1,13.3,14.9)
#' event <- c(0,1,1,0,0,1,0,1,0,0,0,1,0,1,0,1,0,1,1,0)
#' arm   <- c(1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0)
#' data <- data.frame(time,event,arm)
#' #--- analysis ---#
#' library(rmstcompsens)
#' a = diftimermst(data,24)
#' print(a)
#'
NULL
