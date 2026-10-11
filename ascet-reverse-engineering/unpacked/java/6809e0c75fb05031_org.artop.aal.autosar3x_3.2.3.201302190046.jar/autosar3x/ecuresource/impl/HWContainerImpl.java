/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.ecuresource.impl;

import autosar3x.ecuresource.EcuresourcePackage;
import autosar3x.ecuresource.HWContainer;
import autosar3x.ecuresource.impl.HWElementContainerImpl;
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

