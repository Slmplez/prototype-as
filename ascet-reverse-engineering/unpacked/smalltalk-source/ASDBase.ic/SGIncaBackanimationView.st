"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200178e8; bytecode file offset 0x92209c"
!SGIncaBackanimationView methodsFor: 'recovered'!
defaultIcon32
    ^'GeneralSimulationINCABackanimation32'
! !

"ASDBase.ic method 0x2001dd74; bytecode file offset 0x92209c"
!SGIncaBackanimationView methodsFor: 'recovered'!
defaultIcon
    ^'GeneralSimulationINCABackanimation'
! !

"ASDBase.ic method 0x20024584; bytecode file offset 0x92209c"
!SGIncaBackanimationView methodsFor: 'recovered'!
getTitleString
    ^'   ''Inca Backanimation'''
! !

"ASDBase.ic method 0x20077cbc; bytecode file offset 0x9757c8"
!SGIncaBackanimationView methodsFor: 'recovered'!
checkTargetCode
    ^true
! !

"ASDBase.ic method 0x2011c8c8; bytecode file offset 0xa19190"
!SGIncaBackanimationView methodsFor: 'recovered'!
initializeAfterCreate
    super initializeAfterCreate.
    (self) iconSmall: ('GeneralSimulationINCABackanimation') large: ('GeneralSimulationINCABackanimation32').
    ^self
! !

