/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package gautosar.gswcomponents.gportinterface;

import gautosar.gswcomponents.gportinterface.GApplicationError;
import gautosar.gswcomponents.gportinterface.GClientServerOperation;
import gautosar.gswcomponents.gportinterface.GPortInterface;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface GClientServerInterface
extends GPortInterface {
    public EList<GClientServerOperation> gGetOperations();

    public EList<GApplicationError> gGetPossibleErrors();
}

