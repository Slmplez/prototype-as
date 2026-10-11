/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.swcomponent.datatype.constants.impl;

import autosar3x.swcomponent.datatype.constants.ConstantsPackage;
import autosar3x.swcomponent.datatype.constants.ValueSpecification;
import autosar3x.swcomponent.datatype.datatypes.impl.DataPrototypeImpl;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ValueSpecificationImpl
extends DataPrototypeImpl
implements ValueSpecification {
    protected ValueSpecificationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ConstantsPackage.Literals.VALUE_SPECIFICATION;
    }

    @Override
    public boolean _typerequiredforrootconstant(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }
}

