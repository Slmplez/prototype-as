/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.util.HashMap;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.xmi.DOMHandler;
import org.eclipse.emf.ecore.xmi.DOMHelper;
import org.w3c.dom.Attr;
import org.w3c.dom.Node;

public class DefaultDOMHandlerImpl
implements DOMHandler,
DOMHelper {
    protected final HashMap<Node, Object> nodeToObject = new HashMap();
    protected final HashMap<Node, EStructuralFeature> nodeToFeature = new HashMap();
    protected final HashMap<Node, EObject> nodeToContainer = new HashMap();
    protected ExtendedMetaData extendedMetaData;
    static final boolean DEBUG = false;

    void setExtendedMetaData(ExtendedMetaData extendedMetaData) {
        this.extendedMetaData = extendedMetaData;
    }

    public EObject getContainer(Node node) {
        short type = node.getNodeType();
        switch (type) {
            case 1: {
                Object o = this.nodeToObject.get(node);
                if (o != null && o instanceof EObject) {
                    return ((EObject)o).eContainer();
                }
                return (EObject)this.nodeToObject.get(node.getParentNode());
            }
            case 3: 
            case 4: {
                EObject o = this.nodeToContainer.get(node);
                if (o != null) {
                    return o;
                }
                return (EObject)this.nodeToObject.get(node.getParentNode().getParentNode());
            }
            case 2: {
                return (EObject)this.nodeToObject.get(((Attr)node).getOwnerElement());
            }
        }
        return null;
    }

    public Object getValue(Node node) {
        Object value = this.nodeToObject.get(node);
        if (value == null && node.getNodeType() == 3) {
            value = this.nodeToObject.get(node.getParentNode());
        }
        return value;
    }

    public EStructuralFeature getEStructuralFeature(Node node) {
        short type = node.getNodeType();
        switch (type) {
            case 1: {
                return this.nodeToFeature.get(node);
            }
            case 2: {
                EObject obj = (EObject)this.nodeToObject.get(((Attr)node).getOwnerElement());
                if (this.extendedMetaData == null) {
                    return obj.eClass().getEStructuralFeature(node.getLocalName());
                }
                if (obj != null) {
                    return this.extendedMetaData.getAttribute(obj.eClass(), node.getNamespaceURI(), node.getLocalName());
                }
            }
            case 3: 
            case 4: {
                EStructuralFeature feature = this.nodeToFeature.get(node);
                if (feature == null) {
                    feature = this.nodeToFeature.get(node.getParentNode());
                }
                return feature;
            }
        }
        return null;
    }

    public void recordValues(Node node, EObject container, EStructuralFeature feature, Object value) {
        DefaultDOMHandlerImpl.debug(node, container, feature, value);
        short type = node.getNodeType();
        switch (type) {
            case 1: {
                this.nodeToFeature.put(node, feature);
            }
            case 2: {
                if (value == null) break;
                this.nodeToObject.put(node, value);
                break;
            }
            case 3: {
                if (this.nodeToObject.get(node.getParentNode()) == value) break;
            }
            case 4: {
                this.nodeToFeature.put(node, feature);
                this.nodeToContainer.put(node, container);
                this.nodeToObject.put(node, value);
            }
        }
    }

    public DOMHelper getDOMHelper() {
        return this;
    }

    private static final void debug(Node node, EObject container, EStructuralFeature feature, Object value) {
    }
}

