# ' reconstitution du predictif
mon_predict_pred2 <- function(mod_expl = mod_expl, mod_inj = mod_inj, newdata = newdata, B = B) {
  coef = as.matrix(c(mod_expl$coefficients, mod_inj$coefficients))
  Atilde = mod_expl$coefficients
  quiI1etoile = which(duplicated(c(names(Atilde), names(newdata)))) - length(Atilde)
  A2 = mod_inj$coefficients
  quiI2etoile = which(duplicated(c(names(A2), names(newdata)))) - length(A2)
  Z = B[-1, -1]
  Z = Z - diag(diag(Z))
  Z[Z != 0] = 1
  quiI2 = which(colSums(Z) != 0)
  quiI2etoile = which(duplicated(c(names(A2), names(newdata[, quiI2])))) - length(A2)
  if (names(mod_expl$coefficients)[1] == "(Intercept)") {
    X = cbind(rep(1, times = nrow(newdata)), as.matrix(newdata[, quiI1etoile]), as.matrix(extract_Xtilde(X = newdata, B = B)[, quiI2etoile]))
  } else {
    X = cbind(as.matrix(newdata[, quiI1etoile]), extract_Xtilde(X = newdata, B = B))
  }
  return(list(hatY = as.matrix(X) %*% as.matrix(coef), hatA = as.matrix(coef)))
}
