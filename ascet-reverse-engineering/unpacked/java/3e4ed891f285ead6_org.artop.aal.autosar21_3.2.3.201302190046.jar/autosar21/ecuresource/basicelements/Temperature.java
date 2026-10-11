/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar21.ecuresource.basicelements;

import autosar21.ecuresource.HWElement;
import autosar21.genericstructure.infrastructure.ARObject;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Temperature
extends ARObject {
    public HWElement getHWElement();

    public void setHWElement(HWElement var1);

    public Boolean getNeedsCooling();

    public void setNeedsCooling(Boolean var1);

    public void unsetNeedsCooling();

    public boolean isSetNeedsCooling();

    public Boolean getNeedsHeating();

    public void setNeedsHeating(Boolean var1);

    public void unsetNeedsHeating();

    public boolean isSetNeedsHeating();

    public Integer getOperationMax();

    public void setOperationMax(Integer var1);

    public void unsetOperationMax();

    public boolean isSetOperationMax();

    public Integer getOperationMin();

    public void setOperationMin(Integer var1);

    public void unsetOperationMin();

    public boolean isSetOperationMin();

    public Integer getOperationTypical();

    public void setOperationTypical(Integer var1);

    public void unsetOperationTypical();

    public boolean isSetOperationTypical();

    public Integer getStorageMax();

    public void setStorageMax(Integer var1);

    public void unsetStorageMax();

    public boolean isSetStorageMax();

    public Integer getStorageMin();

    public void setStorageMin(Integer var1);

    public void unsetStorageMin();

    public boolean isSetStorageMin();

    public boolean _operationMinoperationTypicalandoperationTypicaloperationMax(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean storageMinstorageMax(DiagnosticChain var1, Map<Object, Object> var2);
}

