## Copyright (C) 2024 adamg
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} UC1 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: adamg <adamg@MR_SOH_II>
## Created: 2024-04-30

function ud1 = UD1 (p)
  % Fonction qui U_D^1 pourla determination de p* et u*
  % Input :
  % - p :
  %
  % Output :
  % - ud1 : U_D^1(p)
  global Ug pg;
  gamma = 1.4;
  ud1 = (Ug + (2.*sqrt(gamma)/(gamma-1)).*(pg.^((gamma-1)/2)-p.^((gamma-1)/2))).*(p<pg);
endfunction
