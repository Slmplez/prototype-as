/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.ecucdescription.impl;

import autosar21.ecucdescription.EcucElement;
import autosar21.ecucdescription.EcucdescriptionPackage;
import autosar21.genericstructure.infrastructure.impl.SplitableElementImpl;
import org.eclipse.emf.ecore.EClass;

public class EcucElementImpl
extends SplitableElementImpl
implements EcucElement {
    protected EcucElementImpl() {
    }

    protected EClass eStaticClass() {
        return EcucdescriptionPackage.Literals.ECUC_ELEMENT;
    }
}

