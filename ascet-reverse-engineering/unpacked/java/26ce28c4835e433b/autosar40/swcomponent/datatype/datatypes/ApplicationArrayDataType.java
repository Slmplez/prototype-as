/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar40.swcomponent.datatype.datatypes;

import autosar40.swcomponent.datatype.dataprototypes.ApplicationArrayElement;
import autosar40.swcomponent.datatype.datatypes.ApplicationCompositeDataType;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ApplicationArrayDataType
extends ApplicationCompositeDataType {
    public ApplicationArrayElement getElement();

    public void setElement(ApplicationArrayElement var1);

    public boolean numberOfElements0(DiagnosticChain var1, Map<Object, Object> var2);
}

