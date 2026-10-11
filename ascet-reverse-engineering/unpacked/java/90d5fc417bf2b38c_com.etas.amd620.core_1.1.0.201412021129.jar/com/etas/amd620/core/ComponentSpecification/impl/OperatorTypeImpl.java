/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.OperatorType;
import com.etas.amd620.core.ComponentSpecification.impl.OperatorTImpl;
import org.eclipse.emf.ecore.EClass;

public class OperatorTypeImpl
extends OperatorTImpl
implements OperatorType {
    protected OperatorTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getOperatorType();
    }
}

