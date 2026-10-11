/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.HierarchyConnectorType;
import com.etas.amd620.core.ComponentSpecification.impl.InOutPortTImpl;
import org.eclipse.emf.ecore.EClass;

public class HierarchyConnectorTypeImpl
extends InOutPortTImpl
implements HierarchyConnectorType {
    protected HierarchyConnectorTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getHierarchyConnectorType();
    }
}

