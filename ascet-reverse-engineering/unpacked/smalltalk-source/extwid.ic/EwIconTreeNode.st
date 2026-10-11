"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20003688; bytecode file offset 0x5447c"
!EwIconTreeNode methodsFor: 'recovered'!
hasChildren
    | recoveredValue0 |
    recoveredValue0 := hasChildren.
    ^recoveredValue0
! !

"extwid.ic method 0x20003710; bytecode file offset 0x544e4"
!EwIconTreeNode methodsFor: 'recovered'!
hierarchy
    | recoveredValue0 |
    recoveredValue0 := hierarchy.
    ^recoveredValue0
! !

"extwid.ic method 0x20003768; bytecode file offset 0x5454c"
!EwIconTreeNode methodsFor: 'recovered'!
depth
    | recoveredValue0 |
    recoveredValue0 := depth.
    ^recoveredValue0
! !

"extwid.ic method 0x20003800; bytecode file offset 0x545cc"
!EwIconTreeNode methodsFor: 'recovered'!
subhierarchy
    | recoveredValue0 |
    recoveredValue0 := subhierarchy.
    ^recoveredValue0
! !

"extwid.ic method 0x20007070; bytecode file offset 0x57e4c"
!EwIconTreeNode methodsFor: 'recovered'!
hasChildren: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hasChildren := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200070b0; bytecode file offset 0x57ea4"
!EwIconTreeNode methodsFor: 'recovered'!
hierarchy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hierarchy := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000710c; bytecode file offset 0x57ed8"
!EwIconTreeNode methodsFor: 'recovered'!
depth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    depth := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20007130; bytecode file offset 0x57f14"
!EwIconTreeNode methodsFor: 'recovered'!
subhierarchy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    subhierarchy := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20012a44; bytecode file offset 0x63824"
!EwIconTreeNode methodsFor: 'recovered'!
drawUsing: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super drawUsing: (recoveredValue0) in: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) widget.
    recoveredValue4 := (recoveredValue3) pixelForeground.
    (recoveredValue2) setForeground: (recoveredValue4).
    recoveredValue5 := (self) widget.
    recoveredValue6 := (recoveredValue5) hierarchyPolicy.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredArg2.
    (recoveredValue6) drawUsing: (recoveredValue7) in: (recoveredValue8) node: (self).
    ^self
! !

"extwid.ic method 0x200183a8; bytecode file offset 0x691a0"
!EwIconTreeNode methodsFor: 'recovered'!
setRcForHierarchyIndicator
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := (recoveredValue0) rc.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) widget.
    recoveredValue4 := (recoveredValue3) horizontalScrollOffset.
    recoveredValue5 := (recoveredValue4) negated.
    (recoveredValue2) x: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) top.
    (recoveredValue6) y: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) widget.
    recoveredValue10 := (recoveredValue9) hierarchyPolicy.
    recoveredValue11 := (self) depth.
    recoveredValue12 := (recoveredValue10) widthAt: (recoveredValue11).
    (recoveredValue8) width: (recoveredValue12).
    recoveredValue13 := (self) height.
    (recoveredValue1) height: (recoveredValue13).
    ^self
! !

"extwid.ic method 0x20031748; bytecode file offset 0x82568"
!EwIconTreeNode methodsFor: 'recovered'!
calculateSize
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 |
    super calculateSize.
    recoveredValue0 := (self) widget.
    recoveredValue1 := (recoveredValue0) hierarchyPolicy.
    recoveredValue2 := (self) depth.
    recoveredValue3 := (recoveredValue1) widthAt: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) width.
    recoveredValue6 := (recoveredValue4) + (recoveredValue5).
    (self) width: (recoveredValue6).
    recoveredValue7 := (self) iconBox.
    recoveredValue8 := (recoveredValue7) left.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue8) + (recoveredValue9).
    recoveredValue11 := (self) iconBox.
    recoveredValue12 := (recoveredValue11) top.
    recoveredValue13 := (recoveredValue10) @ (recoveredValue12).
    recoveredValue14 := (self) iconBox.
    recoveredValue15 := (recoveredValue14) extent.
    recoveredValue16 := (recoveredValue13) extent: (recoveredValue15).
    (self) iconBox: (recoveredValue16).
    recoveredValue17 := (self) iconEmphasisBox.
    recoveredValue18 := (recoveredValue17) left.
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (recoveredValue18) + (recoveredValue19).
    recoveredValue21 := (self) iconEmphasisBox.
    recoveredValue22 := (recoveredValue21) top.
    recoveredValue23 := (recoveredValue20) @ (recoveredValue22).
    recoveredValue24 := (self) iconEmphasisBox.
    recoveredValue25 := (recoveredValue24) extent.
    recoveredValue26 := (recoveredValue23) extent: (recoveredValue25).
    (self) iconEmphasisBox: (recoveredValue26).
    recoveredValue27 := (self) labelBox.
    recoveredValue28 := (recoveredValue27) left.
    recoveredValue29 := recoveredLocal1.
    recoveredValue30 := (recoveredValue28) + (recoveredValue29).
    recoveredValue31 := (self) labelBox.
    recoveredValue32 := (recoveredValue31) top.
    recoveredValue33 := (recoveredValue30) @ (recoveredValue32).
    recoveredValue34 := (self) labelBox.
    recoveredValue35 := (recoveredValue34) extent.
    recoveredValue36 := (recoveredValue33) extent: (recoveredValue35).
    (self) labelBox: (recoveredValue36).
    recoveredValue37 := (self) labelEmphasisBox.
    recoveredValue38 := (recoveredValue37) left.
    recoveredValue39 := recoveredLocal1.
    recoveredValue40 := (recoveredValue38) + (recoveredValue39).
    recoveredValue41 := (self) labelEmphasisBox.
    recoveredValue42 := (recoveredValue41) top.
    recoveredValue43 := (recoveredValue40) @ (recoveredValue42).
    recoveredValue44 := (self) labelEmphasisBox.
    recoveredValue45 := (recoveredValue44) extent.
    recoveredValue46 := (recoveredValue43) extent: (recoveredValue45).
    (self) labelEmphasisBox: (recoveredValue46).
    recoveredValue47 := (self) marginBox.
    recoveredValue48 := (recoveredValue47) left.
    recoveredValue49 := recoveredLocal1.
    recoveredValue50 := (recoveredValue48) + (recoveredValue49).
    recoveredValue51 := (self) marginBox.
    recoveredValue52 := (recoveredValue51) top.
    recoveredValue53 := (recoveredValue50) @ (recoveredValue52).
    recoveredValue54 := (self) marginBox.
    recoveredValue55 := (recoveredValue54) extent.
    recoveredValue56 := (recoveredValue53) extent: (recoveredValue55).
    (self) marginBox: (recoveredValue56).
    ^self
! !

