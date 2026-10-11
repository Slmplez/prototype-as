/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.InitType;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class InitTypeImpl
extends MinimalEObjectImpl.Container
implements InitType {
    protected InitTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.INIT_TYPE;
    }
}

