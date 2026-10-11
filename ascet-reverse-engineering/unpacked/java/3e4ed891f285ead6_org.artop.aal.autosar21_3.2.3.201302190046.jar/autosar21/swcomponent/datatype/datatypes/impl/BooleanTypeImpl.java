/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.swcomponent.datatype.datatypes.impl;

import autosar21.swcomponent.datatype.datatypes.BooleanType;
import autosar21.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar21.swcomponent.datatype.datatypes.impl.PrimitiveTypeImpl;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BooleanTypeImpl
extends PrimitiveTypeImpl
implements BooleanType {
    protected BooleanTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DatatypesPackage.Literals.BOOLEAN_TYPE;
    }

    @Override
    public boolean defvaluesTRUEFALSE(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }
}

