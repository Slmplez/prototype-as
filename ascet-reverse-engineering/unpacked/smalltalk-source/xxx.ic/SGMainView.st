"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx.ic method 0x20000774; bytecode file offset 0x15244"
!SGMainView methodsFor: 'recovered'!
startObservingWebServiceActions
    (self) wsStateInitial.
    super startObservingWebServiceActions.
    ^self
! !

"xxx.ic method 0x20000798; bytecode file offset 0x15268"
!SGMainView methodsFor: 'recovered'!
stopObservingWebServiceActions
    super stopObservingWebServiceActions.
    (self) wsStateInitial.
    ^self
! !

