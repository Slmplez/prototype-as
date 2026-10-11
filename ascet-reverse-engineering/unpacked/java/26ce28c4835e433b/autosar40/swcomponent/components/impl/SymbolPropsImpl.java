/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.swcomponent.components.impl;

import autosar40.commonstructure.implementation.impl.ImplementationPropsImpl;
import autosar40.swcomponent.components.ComponentsPackage;
import autosar40.swcomponent.components.SymbolProps;
import org.eclipse.emf.ecore.EClass;

public class SymbolPropsImpl
extends ImplementationPropsImpl
implements SymbolProps {
    protected SymbolPropsImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.SYMBOL_PROPS;
    }
}

