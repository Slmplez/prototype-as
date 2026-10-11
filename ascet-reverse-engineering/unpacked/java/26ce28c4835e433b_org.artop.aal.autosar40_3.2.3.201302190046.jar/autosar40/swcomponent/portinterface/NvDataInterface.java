/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GNvDataInterface
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.portinterface;

import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.portinterface.DataInterface;
import gautosar.gswcomponents.gportinterface.GNvDataInterface;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface NvDataInterface
extends DataInterface,
GNvDataInterface {
    public EList<VariableDataPrototype> getNvDatas();

    public boolean atleastonedataelementormodegroup(DiagnosticChain var1, Map<Object, Object> var2);
}

