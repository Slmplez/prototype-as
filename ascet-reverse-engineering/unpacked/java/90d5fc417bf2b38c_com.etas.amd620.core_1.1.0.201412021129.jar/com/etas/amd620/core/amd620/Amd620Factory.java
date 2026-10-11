/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package com.etas.amd620.core.amd620;

import com.etas.amd620.core.amd620.Amd620Package;
import com.etas.amd620.core.amd620.AscetClass;
import com.etas.amd620.core.amd620.AscetComponent;
import com.etas.amd620.core.amd620.AscetInterface;
import com.etas.amd620.core.amd620.AscetProject;
import com.etas.amd620.core.amd620.DefaultConfiguration;
import com.etas.amd620.core.amd620.impl.Amd620FactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface Amd620Factory
extends EFactory {
    public static final Amd620Factory eINSTANCE = Amd620FactoryImpl.init();

    public AscetComponent createAscetComponent();

    public AscetClass createAscetClass();

    public AscetProject createAscetProject();

    public DefaultConfiguration createDefaultConfiguration();

    public AscetInterface createAscetInterface();

    public Amd620Package getAmd620Package();
}

