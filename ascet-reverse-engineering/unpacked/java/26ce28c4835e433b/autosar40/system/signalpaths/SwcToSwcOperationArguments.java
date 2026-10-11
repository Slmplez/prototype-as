/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.signalpaths;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.instancerefs.OperationInSystemInstanceRef;
import autosar40.system.signalpaths.SwcToSwcOperationArgumentsDirectionEnum;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwcToSwcOperationArguments
extends ARObject {
    public SwcToSwcOperationArgumentsDirectionEnum getDirection();

    public void setDirection(SwcToSwcOperationArgumentsDirectionEnum var1);

    public void unsetDirection();

    public boolean isSetDirection();

    public EList<OperationInSystemInstanceRef> getOperations();
}

