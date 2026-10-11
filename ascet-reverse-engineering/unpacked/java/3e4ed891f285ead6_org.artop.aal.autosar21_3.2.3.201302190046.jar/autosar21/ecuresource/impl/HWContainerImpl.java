/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.ecuresource.impl;

import autosar21.ecuresource.EcuresourcePackage;
import autosar21.ecuresource.HWContainer;
import autosar21.ecuresource.impl.HWElementContainerImpl;
import org.eclipse.emf.ecore.EClass;

public class HWContainerImpl
extends HWElementContainerImpl
implements HWContainer {
    protected HWContainerImpl() {
    }

    protected EClass eStaticClass() {
        return EcuresourcePackage.Literals.HW_CONTAINER;
    }
}

