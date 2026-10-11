/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.synopsis.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.synopsis.SynArgument;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.synopsis.SynopsisPackage;
import org.eclipse.emf.ecore.EClass;

public class SynArgumentImpl
extends ARObjectImpl
implements SynArgument {
    protected SynArgumentImpl() {
    }

    protected EClass eStaticClass() {
        return SynopsisPackage.Literals.SYN_ARGUMENT;
    }
}

