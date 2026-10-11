/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar21.swcomponent.datatype.datatypes;

import autosar21.swcomponent.datatype.datatypes.ArrayElement;
import autosar21.swcomponent.datatype.datatypes.CompositeType;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ArrayType
extends CompositeType {
    public ArrayElement getElement();

    public void setElement(ArrayElement var1);

    public boolean numberOfElements0(DiagnosticChain var1, Map<Object, Object> var2);
}

