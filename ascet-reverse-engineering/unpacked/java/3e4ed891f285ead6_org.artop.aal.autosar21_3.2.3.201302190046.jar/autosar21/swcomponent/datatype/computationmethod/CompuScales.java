/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScales
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.datatype.computationmethod;

import autosar21.swcomponent.datatype.computationmethod.CompuContent;
import autosar21.swcomponent.datatype.computationmethod.CompuScale;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScales;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CompuScales
extends CompuContent,
GCompuScales {
    public EList<CompuScale> getCompuScales();
}

