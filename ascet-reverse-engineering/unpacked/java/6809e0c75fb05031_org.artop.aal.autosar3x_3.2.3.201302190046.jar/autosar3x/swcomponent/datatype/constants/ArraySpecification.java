/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.swcomponent.datatype.constants;

import autosar3x.swcomponent.datatype.constants.ValueSpecification;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ArraySpecification
extends ValueSpecification {
    public EList<ValueSpecification> getElements();

    public boolean _roleidentifiersareindexnumbers(DiagnosticChain var1, Map<Object, Object> var2);
}

