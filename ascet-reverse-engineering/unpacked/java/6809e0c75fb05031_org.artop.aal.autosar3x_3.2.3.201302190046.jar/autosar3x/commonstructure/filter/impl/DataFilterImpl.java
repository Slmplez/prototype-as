/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.commonstructure.filter.impl;

import autosar3x.commonstructure.filter.DataFilter;
import autosar3x.commonstructure.filter.FilterPackage;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class DataFilterImpl
extends ARObjectImpl
implements DataFilter {
    protected DataFilterImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return FilterPackage.Literals.DATA_FILTER;
    }

    @Override
    public boolean mask0(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public boolean Periodgreater0(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }
}

