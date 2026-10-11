/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.signalpaths;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.signalpaths.SwcToSwcOperationArgumentsDirectionEnum;
import autosar3x.system.signalpaths.instanceref.SwcToSwcOperationArgumentsOperation;
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

    public EList<SwcToSwcOperationArgumentsOperation> getOperations();
}

