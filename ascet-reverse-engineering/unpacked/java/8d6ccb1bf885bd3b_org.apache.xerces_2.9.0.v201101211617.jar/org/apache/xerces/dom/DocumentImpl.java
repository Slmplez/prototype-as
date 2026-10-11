/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.dom;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Vector;
import org.apache.xerces.dom.AttrImpl;
import org.apache.xerces.dom.CharacterDataImpl;
import org.apache.xerces.dom.CoreDocumentImpl;
import org.apache.xerces.dom.DOMImplementationImpl;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.apache.xerces.dom.LCount;
import org.apache.xerces.dom.NodeImpl;
import org.apache.xerces.dom.NodeIteratorImpl;
import org.apache.xerces.dom.RangeImpl;
import org.apache.xerces.dom.TreeWalkerImpl;
import org.apache.xerces.dom.events.EventImpl;
import org.apache.xerces.dom.events.MouseEventImpl;
import org.apache.xerces.dom.events.MutationEventImpl;
import org.apache.xerces.dom.events.UIEventImpl;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.events.DocumentEvent;
import org.w3c.dom.events.Event;
import org.w3c.dom.events.EventException;
import org.w3c.dom.events.EventListener;
import org.w3c.dom.ranges.DocumentRange;
import org.w3c.dom.ranges.Range;
import org.w3c.dom.traversal.DocumentTraversal;
import org.w3c.dom.traversal.NodeFilter;
import org.w3c.dom.traversal.NodeIterator;
import org.w3c.dom.traversal.TreeWalker;

public class DocumentImpl
extends CoreDocumentImpl
implements DocumentTraversal,
DocumentEvent,
DocumentRange {
    static final long serialVersionUID = 515687835542616694L;
    protected Vector iterators;
    protected Vector ranges;
    protected Hashtable eventListeners;
    protected boolean mutationEvents = false;
    EnclosingAttr savedEnclosingAttr;

    public DocumentImpl() {
    }

    public DocumentImpl(boolean bl) {
        super(bl);
    }

    public DocumentImpl(DocumentType documentType) {
        super(documentType);
    }

    public DocumentImpl(DocumentType documentType, boolean bl) {
        super(documentType, bl);
    }

    public Node cloneNode(boolean bl) {
        DocumentImpl documentImpl = new DocumentImpl();
        this.callUserDataHandlers(this, documentImpl, (short)1);
        this.cloneNode(documentImpl, bl);
        documentImpl.mutationEvents = this.mutationEvents;
        return documentImpl;
    }

    public DOMImplementation getImplementation() {
        return DOMImplementationImpl.getDOMImplementation();
    }

    public NodeIterator createNodeIterator(Node node, short s, NodeFilter nodeFilter) {
        return this.createNodeIterator(node, s, nodeFilter, true);
    }

    public NodeIterator createNodeIterator(Node node, int n, NodeFilter nodeFilter, boolean bl) {
        if (node == null) {
            String string = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null);
            throw new DOMException(9, string);
        }
        NodeIteratorImpl nodeIteratorImpl = new NodeIteratorImpl(this, node, n, nodeFilter, bl);
        if (this.iterators == null) {
            this.iterators = new Vector();
        }
        this.iterators.addElement(nodeIteratorImpl);
        return nodeIteratorImpl;
    }

    public TreeWalker createTreeWalker(Node node, short s, NodeFilter nodeFilter) {
        return this.createTreeWalker(node, s, nodeFilter, true);
    }

    public TreeWalker createTreeWalker(Node node, int n, NodeFilter nodeFilter, boolean bl) {
        if (node == null) {
            String string = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null);
            throw new DOMException(9, string);
        }
        return new TreeWalkerImpl(node, n, nodeFilter, bl);
    }

    void removeNodeIterator(NodeIterator nodeIterator) {
        if (nodeIterator == null) {
            return;
        }
        if (this.iterators == null) {
            return;
        }
        this.iterators.removeElement(nodeIterator);
    }

    public Range createRange() {
        if (this.ranges == null) {
            this.ranges = new Vector();
        }
        RangeImpl rangeImpl = new RangeImpl(this);
        this.ranges.addElement(rangeImpl);
        return rangeImpl;
    }

    void removeRange(Range range) {
        if (range == null) {
            return;
        }
        if (this.ranges == null) {
            return;
        }
        this.ranges.removeElement(range);
    }

    void replacedText(CharacterDataImpl characterDataImpl) {
        if (this.ranges != null) {
            this.notifyRangesReplacedText(characterDataImpl);
        }
    }

    private void notifyRangesReplacedText(CharacterDataImpl characterDataImpl) {
        int n = this.ranges.size();
        int n2 = 0;
        while (n2 != n) {
            ((RangeImpl)this.ranges.elementAt(n2)).receiveReplacedText(characterDataImpl);
            ++n2;
        }
    }

    void deletedText(CharacterDataImpl characterDataImpl, int n, int n2) {
        if (this.ranges != null) {
            this.notifyRangesDeletedText(characterDataImpl, n, n2);
        }
    }

    private void notifyRangesDeletedText(CharacterDataImpl characterDataImpl, int n, int n2) {
        int n3 = this.ranges.size();
        int n4 = 0;
        while (n4 != n3) {
            ((RangeImpl)this.ranges.elementAt(n4)).receiveDeletedText(characterDataImpl, n, n2);
            ++n4;
        }
    }

    void insertedText(CharacterDataImpl characterDataImpl, int n, int n2) {
        if (this.ranges != null) {
            this.notifyRangesInsertedText(characterDataImpl, n, n2);
        }
    }

    private void notifyRangesInsertedText(CharacterDataImpl characterDataImpl, int n, int n2) {
        int n3 = this.ranges.size();
        int n4 = 0;
        while (n4 != n3) {
            ((RangeImpl)this.ranges.elementAt(n4)).receiveInsertedText(characterDataImpl, n, n2);
            ++n4;
        }
    }

    void splitData(Node node, Node node2, int n) {
        if (this.ranges != null) {
            this.notifyRangesSplitData(node, node2, n);
        }
    }

    private void notifyRangesSplitData(Node node, Node node2, int n) {
        int n2 = this.ranges.size();
        int n3 = 0;
        while (n3 != n2) {
            ((RangeImpl)this.ranges.elementAt(n3)).receiveSplitData(node, node2, n);
            ++n3;
        }
    }

    public Event createEvent(String string) throws DOMException {
        if (string.equalsIgnoreCase("Events") || "Event".equals(string)) {
            return new EventImpl();
        }
        if (string.equalsIgnoreCase("MutationEvents") || "MutationEvent".equals(string)) {
            return new MutationEventImpl();
        }
        if (string.equalsIgnoreCase("UIEvents") || "UIEvent".equals(string)) {
            return new UIEventImpl();
        }
        if (string.equalsIgnoreCase("MouseEvents") || "MouseEvent".equals(string)) {
            return new MouseEventImpl();
        }
        String string2 = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null);
        throw new DOMException(9, string2);
    }

    void setMutationEvents(boolean bl) {
        this.mutationEvents = bl;
    }

    boolean getMutationEvents() {
        return this.mutationEvents;
    }

    protected void setEventListeners(NodeImpl nodeImpl, Vector vector) {
        if (this.eventListeners == null) {
            this.eventListeners = new Hashtable();
        }
        if (vector == null) {
            this.eventListeners.remove(nodeImpl);
            if (this.eventListeners.isEmpty()) {
                this.mutationEvents = false;
            }
        } else {
            this.eventListeners.put(nodeImpl, vector);
            this.mutationEvents = true;
        }
    }

    protected Vector getEventListeners(NodeImpl nodeImpl) {
        if (this.eventListeners == null) {
            return null;
        }
        return (Vector)this.eventListeners.get(nodeImpl);
    }

    protected void addEventListener(NodeImpl nodeImpl, String string, EventListener eventListener, boolean bl) {
        if (string == null || string.equals("") || eventListener == null) {
            return;
        }
        this.removeEventListener(nodeImpl, string, eventListener, bl);
        Vector<LEntry> vector = this.getEventListeners(nodeImpl);
        if (vector == null) {
            vector = new Vector<LEntry>();
            this.setEventListeners(nodeImpl, vector);
        }
        vector.addElement(new LEntry(string, eventListener, bl));
        LCount lCount = LCount.lookup(string);
        if (bl) {
            ++lCount.captures;
            ++lCount.total;
        } else {
            ++lCount.bubbles;
            ++lCount.total;
        }
    }

    protected void removeEventListener(NodeImpl nodeImpl, String string, EventListener eventListener, boolean bl) {
        if (string == null || string.equals("") || eventListener == null) {
            return;
        }
        Vector vector = this.getEventListeners(nodeImpl);
        if (vector == null) {
            return;
        }
        int n = vector.size() - 1;
        while (n >= 0) {
            LEntry lEntry = (LEntry)vector.elementAt(n);
            if (lEntry.useCapture == bl && lEntry.listener == eventListener && lEntry.type.equals(string)) {
                vector.removeElementAt(n);
                if (vector.size() == 0) {
                    this.setEventListeners(nodeImpl, null);
                }
                LCount lCount = LCount.lookup(string);
                if (bl) {
                    --lCount.captures;
                    --lCount.total;
                    break;
                }
                --lCount.bubbles;
                --lCount.total;
                break;
            }
            --n;
        }
    }

    protected void copyEventListeners(NodeImpl nodeImpl, NodeImpl nodeImpl2) {
        Vector vector = this.getEventListeners(nodeImpl);
        if (vector == null) {
            return;
        }
        this.setEventListeners(nodeImpl2, (Vector)vector.clone());
    }

    protected boolean dispatchEvent(NodeImpl nodeImpl, Event event) {
        Cloneable cloneable;
        Cloneable cloneable2;
        if (event == null) {
            return false;
        }
        EventImpl eventImpl = (EventImpl)event;
        if (!eventImpl.initialized || eventImpl.type == null || eventImpl.type.equals("")) {
            String string = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "UNSPECIFIED_EVENT_TYPE_ERR", null);
            throw new EventException(0, string);
        }
        LCount lCount = LCount.lookup(eventImpl.getType());
        if (lCount.total == 0) {
            return eventImpl.preventDefault;
        }
        eventImpl.target = nodeImpl;
        eventImpl.stopPropagation = false;
        eventImpl.preventDefault = false;
        ArrayList<Node> arrayList = new ArrayList<Node>(10);
        Node node = nodeImpl;
        Node node2 = node.getParentNode();
        while (node2 != null) {
            arrayList.add(node2);
            node = node2;
            node2 = node2.getParentNode();
        }
        if (lCount.captures > 0) {
            eventImpl.eventPhase = 1;
            int n = arrayList.size() - 1;
            while (n >= 0) {
                if (eventImpl.stopPropagation) break;
                cloneable2 = (NodeImpl)arrayList.get(n);
                eventImpl.currentTarget = cloneable2;
                Vector vector = this.getEventListeners((NodeImpl)cloneable2);
                if (vector != null) {
                    cloneable = (Vector)vector.clone();
                    int n2 = ((Vector)cloneable).size();
                    int n3 = 0;
                    while (n3 < n2) {
                        LEntry lEntry = (LEntry)((Vector)cloneable).elementAt(n3);
                        if (lEntry.useCapture && lEntry.type.equals(eventImpl.type) && vector.contains(lEntry)) {
                            try {
                                lEntry.listener.handleEvent(eventImpl);
                            }
                            catch (Exception exception) {
                                // empty catch block
                            }
                        }
                        ++n3;
                    }
                }
                --n;
            }
        }
        if (lCount.bubbles > 0) {
            eventImpl.eventPhase = (short)2;
            eventImpl.currentTarget = nodeImpl;
            Vector vector = this.getEventListeners(nodeImpl);
            if (!eventImpl.stopPropagation && vector != null) {
                cloneable2 = (Vector)vector.clone();
                int n = ((Vector)cloneable2).size();
                int n4 = 0;
                while (n4 < n) {
                    LEntry lEntry = (LEntry)((Vector)cloneable2).elementAt(n4);
                    if (!lEntry.useCapture && lEntry.type.equals(eventImpl.type) && vector.contains(lEntry)) {
                        try {
                            lEntry.listener.handleEvent(eventImpl);
                        }
                        catch (Exception exception) {
                            // empty catch block
                        }
                    }
                    ++n4;
                }
            }
            if (eventImpl.bubbles) {
                eventImpl.eventPhase = (short)3;
                int n = arrayList.size();
                int n5 = 0;
                while (n5 < n) {
                    if (eventImpl.stopPropagation) break;
                    cloneable = (NodeImpl)arrayList.get(n5);
                    eventImpl.currentTarget = cloneable;
                    vector = this.getEventListeners((NodeImpl)cloneable);
                    if (vector != null) {
                        Vector vector2 = (Vector)vector.clone();
                        int n6 = vector2.size();
                        int n7 = 0;
                        while (n7 < n6) {
                            LEntry lEntry = (LEntry)vector2.elementAt(n7);
                            if (!lEntry.useCapture && lEntry.type.equals(eventImpl.type) && vector.contains(lEntry)) {
                                try {
                                    lEntry.listener.handleEvent(eventImpl);
                                }
                                catch (Exception exception) {
                                    // empty catch block
                                }
                            }
                            ++n7;
                        }
                    }
                    ++n5;
                }
            }
        }
        if (lCount.defaults <= 0 || !eventImpl.cancelable || !eventImpl.preventDefault) {
            // empty if block
        }
        return eventImpl.preventDefault;
    }

    protected void dispatchEventToSubtree(Node node, Event event) {
        ((NodeImpl)node).dispatchEvent(event);
        if (node.getNodeType() == 1) {
            NamedNodeMap namedNodeMap = node.getAttributes();
            int n = namedNodeMap.getLength() - 1;
            while (n >= 0) {
                this.dispatchingEventToSubtree(namedNodeMap.item(n), event);
                --n;
            }
        }
        this.dispatchingEventToSubtree(node.getFirstChild(), event);
    }

    protected void dispatchingEventToSubtree(Node node, Event event) {
        if (node == null) {
            return;
        }
        ((NodeImpl)node).dispatchEvent(event);
        if (node.getNodeType() == 1) {
            NamedNodeMap namedNodeMap = node.getAttributes();
            int n = namedNodeMap.getLength() - 1;
            while (n >= 0) {
                this.dispatchingEventToSubtree(namedNodeMap.item(n), event);
                --n;
            }
        }
        this.dispatchingEventToSubtree(node.getFirstChild(), event);
        this.dispatchingEventToSubtree(node.getNextSibling(), event);
    }

    protected void dispatchAggregateEvents(NodeImpl nodeImpl, EnclosingAttr enclosingAttr) {
        if (enclosingAttr != null) {
            this.dispatchAggregateEvents(nodeImpl, enclosingAttr.node, enclosingAttr.oldvalue, (short)1);
        } else {
            this.dispatchAggregateEvents(nodeImpl, null, null, (short)0);
        }
    }

    protected void dispatchAggregateEvents(NodeImpl nodeImpl, AttrImpl attrImpl, String string, short s) {
        MutationEventImpl mutationEventImpl;
        LCount lCount;
        NodeImpl nodeImpl2 = null;
        if (attrImpl != null) {
            lCount = LCount.lookup("DOMAttrModified");
            nodeImpl2 = (NodeImpl)((Object)attrImpl.getOwnerElement());
            if (lCount.total > 0 && nodeImpl2 != null) {
                mutationEventImpl = new MutationEventImpl();
                mutationEventImpl.initMutationEvent("DOMAttrModified", true, false, attrImpl, string, attrImpl.getNodeValue(), attrImpl.getNodeName(), s);
                nodeImpl2.dispatchEvent(mutationEventImpl);
            }
        }
        lCount = LCount.lookup("DOMSubtreeModified");
        if (lCount.total > 0) {
            mutationEventImpl = new MutationEventImpl();
            mutationEventImpl.initMutationEvent("DOMSubtreeModified", true, false, null, null, null, null, (short)0);
            if (attrImpl != null) {
                this.dispatchEvent(attrImpl, mutationEventImpl);
                if (nodeImpl2 != null) {
                    this.dispatchEvent(nodeImpl2, mutationEventImpl);
                }
            } else {
                this.dispatchEvent(nodeImpl, mutationEventImpl);
            }
        }
    }

    protected void saveEnclosingAttr(NodeImpl nodeImpl) {
        this.savedEnclosingAttr = null;
        LCount lCount = LCount.lookup("DOMAttrModified");
        if (lCount.total > 0) {
            NodeImpl nodeImpl2 = nodeImpl;
            while (true) {
                if (nodeImpl2 == null) {
                    return;
                }
                short s = nodeImpl2.getNodeType();
                if (s == 2) {
                    EnclosingAttr enclosingAttr = new EnclosingAttr();
                    enclosingAttr.node = (AttrImpl)nodeImpl2;
                    enclosingAttr.oldvalue = enclosingAttr.node.getNodeValue();
                    this.savedEnclosingAttr = enclosingAttr;
                    return;
                }
                if (s == 5) {
                    nodeImpl2 = nodeImpl2.parentNode();
                    continue;
                }
                if (s != 3) break;
                nodeImpl2 = nodeImpl2.parentNode();
            }
            return;
        }
    }

    void modifyingCharacterData(NodeImpl nodeImpl, boolean bl) {
        if (this.mutationEvents && !bl) {
            this.saveEnclosingAttr(nodeImpl);
        }
    }

    void modifiedCharacterData(NodeImpl nodeImpl, String string, String string2, boolean bl) {
        if (this.mutationEvents) {
            this.mutationEventsModifiedCharacterData(nodeImpl, string, string2, bl);
        }
    }

    private void mutationEventsModifiedCharacterData(NodeImpl nodeImpl, String string, String string2, boolean bl) {
        if (!bl) {
            LCount lCount = LCount.lookup("DOMCharacterDataModified");
            if (lCount.total > 0) {
                MutationEventImpl mutationEventImpl = new MutationEventImpl();
                mutationEventImpl.initMutationEvent("DOMCharacterDataModified", true, false, null, string, string2, null, (short)0);
                this.dispatchEvent(nodeImpl, mutationEventImpl);
            }
            this.dispatchAggregateEvents(nodeImpl, this.savedEnclosingAttr);
        }
    }

    void replacedCharacterData(NodeImpl nodeImpl, String string, String string2) {
        this.modifiedCharacterData(nodeImpl, string, string2, false);
    }

    void insertingNode(NodeImpl nodeImpl, boolean bl) {
        if (this.mutationEvents && !bl) {
            this.saveEnclosingAttr(nodeImpl);
        }
    }

    void insertedNode(NodeImpl nodeImpl, NodeImpl nodeImpl2, boolean bl) {
        if (this.mutationEvents) {
            this.mutationEventsInsertedNode(nodeImpl, nodeImpl2, bl);
        }
        if (this.ranges != null) {
            this.notifyRangesInsertedNode(nodeImpl2);
        }
    }

    private void mutationEventsInsertedNode(NodeImpl nodeImpl, NodeImpl nodeImpl2, boolean bl) {
        Object object;
        LCount lCount = LCount.lookup("DOMNodeInserted");
        if (lCount.total > 0) {
            object = new MutationEventImpl();
            ((MutationEventImpl)object).initMutationEvent("DOMNodeInserted", true, false, nodeImpl, null, null, null, (short)0);
            this.dispatchEvent(nodeImpl2, (Event)object);
        }
        lCount = LCount.lookup("DOMNodeInsertedIntoDocument");
        if (lCount.total > 0) {
            object = nodeImpl;
            if (this.savedEnclosingAttr != null) {
                object = (NodeImpl)((Object)this.savedEnclosingAttr.node.getOwnerElement());
            }
            if (object != null) {
                Object object2 = object;
                while (object2 != null) {
                    object = object2;
                    object2 = ((NodeImpl)object2).getNodeType() == 2 ? (NodeImpl)((Object)((AttrImpl)object2).getOwnerElement()) : ((NodeImpl)object2).parentNode();
                }
                if (((NodeImpl)object).getNodeType() == 9) {
                    MutationEventImpl mutationEventImpl = new MutationEventImpl();
                    mutationEventImpl.initMutationEvent("DOMNodeInsertedIntoDocument", false, false, null, null, null, null, (short)0);
                    this.dispatchEventToSubtree(nodeImpl2, mutationEventImpl);
                }
            }
        }
        if (!bl) {
            this.dispatchAggregateEvents(nodeImpl, this.savedEnclosingAttr);
        }
    }

    private void notifyRangesInsertedNode(NodeImpl nodeImpl) {
        int n = this.ranges.size();
        int n2 = 0;
        while (n2 != n) {
            ((RangeImpl)this.ranges.elementAt(n2)).insertedNodeFromDOM(nodeImpl);
            ++n2;
        }
    }

    void removingNode(NodeImpl nodeImpl, NodeImpl nodeImpl2, boolean bl) {
        if (this.iterators != null) {
            this.notifyIteratorsRemovingNode(nodeImpl2);
        }
        if (this.ranges != null) {
            this.notifyRangesRemovingNode(nodeImpl2);
        }
        if (this.mutationEvents) {
            this.mutationEventsRemovingNode(nodeImpl, nodeImpl2, bl);
        }
    }

    private void notifyIteratorsRemovingNode(NodeImpl nodeImpl) {
        int n = this.iterators.size();
        int n2 = 0;
        while (n2 != n) {
            ((NodeIteratorImpl)this.iterators.elementAt(n2)).removeNode(nodeImpl);
            ++n2;
        }
    }

    private void notifyRangesRemovingNode(NodeImpl nodeImpl) {
        int n = this.ranges.size();
        int n2 = 0;
        while (n2 != n) {
            ((RangeImpl)this.ranges.elementAt(n2)).removeNode(nodeImpl);
            ++n2;
        }
    }

    private void mutationEventsRemovingNode(NodeImpl nodeImpl, NodeImpl nodeImpl2, boolean bl) {
        Object object;
        if (!bl) {
            this.saveEnclosingAttr(nodeImpl);
        }
        LCount lCount = LCount.lookup("DOMNodeRemoved");
        if (lCount.total > 0) {
            object = new MutationEventImpl();
            ((MutationEventImpl)object).initMutationEvent("DOMNodeRemoved", true, false, nodeImpl, null, null, null, (short)0);
            this.dispatchEvent(nodeImpl2, (Event)object);
        }
        lCount = LCount.lookup("DOMNodeRemovedFromDocument");
        if (lCount.total > 0) {
            object = this;
            if (this.savedEnclosingAttr != null) {
                object = (NodeImpl)((Object)this.savedEnclosingAttr.node.getOwnerElement());
            }
            if (object != null) {
                NodeImpl nodeImpl3 = ((NodeImpl)object).parentNode();
                while (nodeImpl3 != null) {
                    object = nodeImpl3;
                    nodeImpl3 = nodeImpl3.parentNode();
                }
                if (((NodeImpl)object).getNodeType() == 9) {
                    MutationEventImpl mutationEventImpl = new MutationEventImpl();
                    mutationEventImpl.initMutationEvent("DOMNodeRemovedFromDocument", false, false, null, null, null, null, (short)0);
                    this.dispatchEventToSubtree(nodeImpl2, mutationEventImpl);
                }
            }
        }
    }

    void removedNode(NodeImpl nodeImpl, boolean bl) {
        if (this.mutationEvents && !bl) {
            this.dispatchAggregateEvents(nodeImpl, this.savedEnclosingAttr);
        }
    }

    void replacingNode(NodeImpl nodeImpl) {
        if (this.mutationEvents) {
            this.saveEnclosingAttr(nodeImpl);
        }
    }

    void replacingData(NodeImpl nodeImpl) {
        if (this.mutationEvents) {
            this.saveEnclosingAttr(nodeImpl);
        }
    }

    void replacedNode(NodeImpl nodeImpl) {
        if (this.mutationEvents) {
            this.dispatchAggregateEvents(nodeImpl, this.savedEnclosingAttr);
        }
    }

    void modifiedAttrValue(AttrImpl attrImpl, String string) {
        if (this.mutationEvents) {
            this.dispatchAggregateEvents(attrImpl, attrImpl, string, (short)1);
        }
    }

    void setAttrNode(AttrImpl attrImpl, AttrImpl attrImpl2) {
        if (this.mutationEvents) {
            if (attrImpl2 == null) {
                this.dispatchAggregateEvents(attrImpl.ownerNode, attrImpl, null, (short)2);
            } else {
                this.dispatchAggregateEvents(attrImpl.ownerNode, attrImpl, attrImpl2.getNodeValue(), (short)1);
            }
        }
    }

    void removedAttrNode(AttrImpl attrImpl, NodeImpl nodeImpl, String string) {
        if (this.mutationEvents) {
            this.mutationEventsRemovedAttrNode(attrImpl, nodeImpl, string);
        }
    }

    private void mutationEventsRemovedAttrNode(AttrImpl attrImpl, NodeImpl nodeImpl, String string) {
        LCount lCount = LCount.lookup("DOMAttrModified");
        if (lCount.total > 0) {
            MutationEventImpl mutationEventImpl = new MutationEventImpl();
            mutationEventImpl.initMutationEvent("DOMAttrModified", true, false, attrImpl, attrImpl.getNodeValue(), null, string, (short)3);
            this.dispatchEvent(nodeImpl, mutationEventImpl);
        }
        this.dispatchAggregateEvents(nodeImpl, null, null, (short)0);
    }

    void renamedAttrNode(Attr attr, Attr attr2) {
    }

    void renamedElement(Element element, Element element2) {
    }

    class EnclosingAttr
    implements Serializable {
        private static final long serialVersionUID = 5208387723391647216L;
        AttrImpl node;
        String oldvalue;

        EnclosingAttr() {
        }
    }

    class LEntry
    implements Serializable {
        private static final long serialVersionUID = -8426757059492421631L;
        String type;
        EventListener listener;
        boolean useCapture;

        LEntry(String string, EventListener eventListener, boolean bl) {
            this.type = string;
            this.listener = eventListener;
            this.useCapture = bl;
        }
    }
}

