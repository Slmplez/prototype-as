/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.builders;

import java.util.HashMap;
import java.util.HashSet;
import org.eclipse.pde.internal.core.builders.ElementOccurrenceResult;
import org.eclipse.pde.internal.core.ischema.ISchemaComplexType;
import org.eclipse.pde.internal.core.ischema.ISchemaCompositor;
import org.eclipse.pde.internal.core.ischema.ISchemaElement;
import org.eclipse.pde.internal.core.ischema.ISchemaObject;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class ElementOccurenceChecker {
    public static HashSet findMaxOccurenceViolations(ISchemaElement sElement, Element element) {
        HashMap tagNameMap = ElementOccurenceChecker.countXMLChildrenByTagName(element);
        return ElementOccurenceChecker.processChildrenMax(sElement, tagNameMap, element);
    }

    public static HashSet findMinOccurenceViolations(ISchemaElement sElement, Element element) {
        HashMap tagNameMap = ElementOccurenceChecker.countXMLChildrenByTagName(element);
        return ElementOccurenceChecker.processChildrenMin(sElement, tagNameMap);
    }

    private static HashMap countXMLChildrenByTagName(Element element) {
        NodeList children = element.getChildNodes();
        HashMap<String, Integer> tagNameMap = new HashMap<String, Integer>();
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1) {
                String key = child.getNodeName();
                if (tagNameMap.containsKey(key)) {
                    int value = (Integer)tagNameMap.get(key);
                    tagNameMap.put(key, new Integer(++value));
                } else {
                    tagNameMap.put(key, new Integer(1));
                }
            }
            ++i;
        }
        return tagNameMap;
    }

    private static HashSet processChildrenMax(ISchemaElement sElement, HashMap tagNameMap, Element element) {
        HashSet elementSet = new HashSet();
        ISchemaCompositor compositor = ((ISchemaComplexType)sElement.getType()).getCompositor();
        int multiplicityTracker = 1;
        ElementOccurenceChecker.processCompositorMax(compositor, elementSet, tagNameMap, multiplicityTracker, element);
        return elementSet;
    }

    private static HashSet processChildrenMin(ISchemaElement sElement, HashMap tagNameMap) {
        HashSet elementSet = new HashSet();
        ISchemaCompositor compositor = ((ISchemaComplexType)sElement.getType()).getCompositor();
        int multiplicityTracker = 1;
        ElementOccurenceChecker.processCompositorMin(compositor, elementSet, tagNameMap, multiplicityTracker);
        return elementSet;
    }

    private static void processCompositorMin(ISchemaCompositor compositor, HashSet elementSet, HashMap siblings, int multiplicityTracker) {
        if (compositor == null) {
            return;
        }
        if (compositor.getKind() == 1) {
            ElementOccurenceChecker.processChoiceMin(compositor, elementSet, siblings, multiplicityTracker);
        } else if (compositor.getKind() == 2) {
            ElementOccurenceChecker.processSequenceMin(compositor, elementSet, siblings, multiplicityTracker);
        }
    }

    private static void processCompositorMax(ISchemaCompositor compositor, HashSet elementSet, HashMap siblings, int multiplicityTracker, Element element) {
        if (compositor == null) {
            return;
        }
        if (compositor.getKind() == 1) {
            ElementOccurenceChecker.processChoiceMax(compositor, elementSet, siblings, multiplicityTracker, element);
        } else if (compositor.getKind() == 2) {
            ElementOccurenceChecker.processSequenceMax(compositor, elementSet, siblings, multiplicityTracker, element);
        }
    }

    private static void processSequenceMin(ISchemaCompositor compositor, HashSet elementSet, HashMap siblings, int multiplicityTracker) {
        ISchemaObject[] schemaObject = compositor.getChildren();
        if (multiplicityTracker < Integer.MAX_VALUE) {
            multiplicityTracker = compositor.getMinOccurs() * multiplicityTracker;
        }
        int i = 0;
        while (i < compositor.getChildCount()) {
            ElementOccurenceChecker.processObjectMin(schemaObject[i], elementSet, siblings, multiplicityTracker);
            ++i;
        }
    }

    private static void processSequenceMax(ISchemaCompositor compositor, HashSet elementSet, HashMap siblings, int multiplicityTracker, Element element) {
        ISchemaObject[] schemaObject = compositor.getChildren();
        if (multiplicityTracker < Integer.MAX_VALUE) {
            multiplicityTracker = compositor.getMaxOccurs() * multiplicityTracker;
        }
        int i = 0;
        while (i < compositor.getChildCount()) {
            ElementOccurenceChecker.processObjectMax(schemaObject[i], elementSet, siblings, multiplicityTracker, element);
            ++i;
        }
    }

    private static void processChoiceMin(ISchemaCompositor compositor, HashSet elementSet, HashMap siblings, int multiplicityTracker) {
        if (multiplicityTracker < Integer.MAX_VALUE) {
            multiplicityTracker = compositor.getMinOccurs() * multiplicityTracker;
        }
        ElementOccurenceChecker.adjustChoiceMinSiblings(compositor, siblings);
        ISchemaObject[] schemaObject = compositor.getChildren();
        int i = 0;
        while (i < compositor.getChildCount()) {
            ElementOccurenceChecker.processObjectMin(schemaObject[i], elementSet, siblings, multiplicityTracker);
            ++i;
        }
    }

    private static void processChoiceMax(ISchemaCompositor compositor, HashSet elementSet, HashMap siblings, int multiplicityTracker, Element element) {
        if (multiplicityTracker < Integer.MAX_VALUE) {
            multiplicityTracker = compositor.getMaxOccurs() * multiplicityTracker;
        }
        ElementOccurenceChecker.adjustChoiceMaxSiblings(compositor, siblings);
        ISchemaObject[] schemaObject = compositor.getChildren();
        int i = 0;
        while (i < compositor.getChildCount()) {
            ElementOccurenceChecker.processObjectMax(schemaObject[i], elementSet, siblings, multiplicityTracker, element);
            ++i;
        }
    }

    private static void adjustChoiceMaxSiblings(ISchemaCompositor compositor, HashMap siblings) {
        if (ElementOccurenceChecker.isSimpleChoice(compositor)) {
            int childElementCount = ElementOccurenceChecker.countChoiceElementChildren(compositor, siblings);
            ElementOccurenceChecker.updateChoiceElementChildren(compositor, siblings, childElementCount);
        } else {
            ElementOccurenceChecker.updateChoiceElementChildren(compositor, siblings, Integer.MIN_VALUE);
        }
    }

    private static boolean isSimpleChoice(ISchemaCompositor compositor) {
        ISchemaObject[] schemaObject = compositor.getChildren();
        int i = 0;
        while (i < compositor.getChildCount()) {
            if (schemaObject[i] instanceof ISchemaCompositor) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private static void adjustChoiceMinSiblings(ISchemaCompositor compositor, HashMap siblings) {
        if (ElementOccurenceChecker.isSimpleChoice(compositor)) {
            int childElementCount = ElementOccurenceChecker.countChoiceElementChildren(compositor, siblings);
            ElementOccurenceChecker.updateChoiceElementChildren(compositor, siblings, childElementCount);
        } else {
            ElementOccurenceChecker.updateChoiceElementChildren(compositor, siblings, Integer.MAX_VALUE);
        }
    }

    private static int countChoiceElementChildren(ISchemaCompositor compositor, HashMap siblings) {
        ISchemaObject[] schemaObject = compositor.getChildren();
        int childElementCount = 0;
        int i = 0;
        while (i < compositor.getChildCount()) {
            String name;
            if (schemaObject[i] instanceof ISchemaElement && siblings.containsKey(name = schemaObject[i].getName())) {
                int occurences = (Integer)siblings.get(name);
                if (childElementCount < Integer.MAX_VALUE) {
                    childElementCount += occurences;
                }
            }
            ++i;
        }
        return childElementCount;
    }

    private static void updateChoiceElementChildren(ISchemaCompositor compositor, HashMap siblings, int childElementCount) {
        ISchemaObject[] schemaObject = compositor.getChildren();
        int i = 0;
        while (i < compositor.getChildCount()) {
            if (schemaObject[i] instanceof ISchemaElement) {
                String name = schemaObject[i].getName();
                siblings.put(name, new Integer(childElementCount));
            } else if (schemaObject[i] instanceof ISchemaCompositor) {
                ElementOccurenceChecker.updateChoiceElementChildren((ISchemaCompositor)schemaObject[i], siblings, childElementCount);
            }
            ++i;
        }
    }

    private static void processObjectMax(ISchemaObject schemaObject, HashSet elementSet, HashMap siblings, int multiplicityTracker, Element element) {
        if (schemaObject instanceof ISchemaElement) {
            ISchemaElement schemaElement = (ISchemaElement)schemaObject;
            Element childElement = ElementOccurenceChecker.findChildElement(element, schemaElement.getName());
            if (childElement != null) {
                ElementOccurenceChecker.processElementMax(schemaElement, elementSet, siblings, multiplicityTracker, childElement);
            }
        } else if (schemaObject instanceof ISchemaCompositor) {
            ISchemaCompositor sCompositor = (ISchemaCompositor)schemaObject;
            ElementOccurenceChecker.processCompositorMax(sCompositor, elementSet, siblings, multiplicityTracker, element);
        }
    }

    private static void processObjectMin(ISchemaObject schemaObject, HashSet elementSet, HashMap siblings, int multiplicityTracker) {
        if (schemaObject instanceof ISchemaElement) {
            ISchemaElement schemaElement = (ISchemaElement)schemaObject;
            ElementOccurenceChecker.processElementMin(schemaElement, elementSet, siblings, multiplicityTracker);
        } else if (schemaObject instanceof ISchemaCompositor) {
            ISchemaCompositor sCompositor = (ISchemaCompositor)schemaObject;
            ElementOccurenceChecker.processCompositorMin(sCompositor, elementSet, siblings, multiplicityTracker);
        }
    }

    private static void processElementMax(ISchemaElement schemaElement, HashSet elementSet, HashMap siblings, int multiplicityTracker, Element element) {
        int occurrences = 0;
        String name = schemaElement.getName();
        if (siblings.containsKey(name)) {
            occurrences = (Integer)siblings.get(schemaElement.getName());
        }
        if (multiplicityTracker < Integer.MAX_VALUE) {
            multiplicityTracker = schemaElement.getMaxOccurs() * multiplicityTracker;
        }
        if (occurrences > multiplicityTracker) {
            elementSet.add(new ElementOccurrenceResult(element, schemaElement, occurrences, multiplicityTracker));
        }
    }

    private static void processElementMin(ISchemaElement schemaElement, HashSet elementSet, HashMap siblings, int multiplicityTracker) {
        int occurrences = 0;
        String name = schemaElement.getName();
        if (siblings.containsKey(name)) {
            occurrences = (Integer)siblings.get(schemaElement.getName());
        }
        if (multiplicityTracker < Integer.MAX_VALUE) {
            multiplicityTracker = schemaElement.getMinOccurs() * multiplicityTracker;
        }
        if (occurrences < multiplicityTracker) {
            elementSet.add(new ElementOccurrenceResult(null, schemaElement, occurrences, multiplicityTracker));
        }
    }

    private static Element findChildElement(Element element, String name) {
        NodeList children = element.getChildNodes();
        Element match = null;
        int i = 0;
        while (i < children.getLength()) {
            String key;
            Node child = children.item(i);
            if (child.getNodeType() == 1 && (key = child.getNodeName()).equals(name)) {
                match = (Element)child;
            }
            ++i;
        }
        return match;
    }
}

