/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ComputeNodeOrder {
    private ComputeNodeOrder() {
    }

    public static Object[][] computeNodeOrder(Object[] objects, Object[][] references) {
        Object[][] knots;
        Digraph g1 = new Digraph();
        int i = 0;
        while (i < objects.length) {
            g1.addVertex(objects[i]);
            ++i;
        }
        i = 0;
        while (i < references.length) {
            g1.addEdge(references[i][1], references[i][0]);
            ++i;
        }
        g1.freeze();
        Digraph g2 = new Digraph();
        List<Object> resortedVertexes = g1.idsByDFSFinishTime(false);
        Iterator<Object> it = resortedVertexes.iterator();
        while (it.hasNext()) {
            g2.addVertex(it.next());
        }
        int i2 = 0;
        while (i2 < references.length) {
            g2.addEdge(references[i2][0], references[i2][1]);
            ++i2;
        }
        g2.freeze();
        List<Object> sortedProjectList = g2.idsByDFSFinishTime(true);
        Object[] orderedNodes = new Object[sortedProjectList.size()];
        sortedProjectList.toArray(orderedNodes);
        boolean hasCycles = g2.containsCycles();
        if (hasCycles) {
            List<Object[]> knotList = g2.nonTrivialComponents();
            knots = (Object[][])knotList.toArray((T[])new Object[knotList.size()][]);
        } else {
            knots = new Object[][]{};
        }
        int i3 = 0;
        while (i3 < orderedNodes.length) {
            objects[i3] = orderedNodes[i3];
            ++i3;
        }
        return knots;
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class Digraph {
        private List<Vertex> vertexList = new ArrayList<Vertex>(100);
        private Map<Object, Vertex> vertexMap = new HashMap<Object, Vertex>(100);
        private int time;
        private boolean initialized = false;
        private boolean cycles = false;

        public void freeze() {
            if (!this.initialized) {
                this.initialized = true;
                this.DFS();
            }
        }

        public void addVertex(Object id) throws IllegalArgumentException {
            if (this.initialized) {
                throw new IllegalArgumentException();
            }
            Vertex vertex = new Vertex(id);
            Vertex existing = this.vertexMap.put(id, vertex);
            if (existing != null) {
                throw new IllegalArgumentException();
            }
            this.vertexList.add(vertex);
        }

        public void addEdge(Object fromId, Object toId) throws IllegalArgumentException {
            if (this.initialized) {
                throw new IllegalArgumentException();
            }
            Vertex fromVertex = this.vertexMap.get(fromId);
            Vertex toVertex = this.vertexMap.get(toId);
            if (fromVertex == null || toVertex == null) {
                return;
            }
            fromVertex.adjacent.add(toVertex);
        }

        public List<Object> idsByDFSFinishTime(boolean increasing) {
            if (!this.initialized) {
                throw new IllegalArgumentException();
            }
            int len = this.vertexList.size();
            Object[] r = new Object[len];
            for (Vertex vertex : this.vertexList) {
                int f = vertex.finishTime;
                if (increasing) {
                    r[f - 1] = vertex.id;
                    continue;
                }
                r[len - f] = vertex.id;
            }
            return Arrays.asList(r);
        }

        public boolean containsCycles() {
            if (!this.initialized) {
                throw new IllegalArgumentException();
            }
            return this.cycles;
        }

        public List<Object[]> nonTrivialComponents() {
            if (!this.initialized) {
                throw new IllegalArgumentException();
            }
            HashMap<Vertex, ArrayList<Object>> components = new HashMap<Vertex, ArrayList<Object>>();
            for (Vertex vertex : this.vertexList) {
                if (vertex.predecessor == null) continue;
                Vertex root = vertex;
                while (root.predecessor != null) {
                    root = root.predecessor;
                }
                ArrayList<Object> component = (ArrayList<Object>)components.get(root);
                if (component == null) {
                    component = new ArrayList<Object>(2);
                    component.add(root.id);
                    components.put(root, component);
                }
                component.add(vertex.id);
            }
            ArrayList<Object[]> result = new ArrayList<Object[]>(components.size());
            for (List component : components.values()) {
                if (component.size() <= 1) continue;
                result.add(component.toArray());
            }
            return result;
        }

        private void DFS() {
            Integer NEXT_VERTEX_OBJECT = new Integer(1);
            Integer AFTER_NEXTED_DFS_VISIT_OBJECT = new Integer(4);
            this.time = 0;
            ArrayList<Object> stack = new ArrayList<Object>(Math.max(1, this.vertexList.size()));
            Iterator allAdjacent = null;
            Vertex vertex = null;
            Iterator<Vertex> allV = this.vertexList.iterator();
            int state = 1;
            block6: while (true) {
                switch (state) {
                    case 1: {
                        if (!allV.hasNext()) break block6;
                        Vertex nextVertex = allV.next();
                        if (nextVertex.color == "white") {
                            stack.add(NEXT_VERTEX_OBJECT);
                            vertex = nextVertex;
                            state = 2;
                            continue block6;
                        }
                        state = 1;
                        continue block6;
                    }
                    case 2: {
                        vertex.color = "grey";
                        allAdjacent = vertex.adjacent.iterator();
                        state = 3;
                        continue block6;
                    }
                    case 3: {
                        if (allAdjacent.hasNext()) {
                            Vertex adjVertex = (Vertex)allAdjacent.next();
                            if (adjVertex.color == "white") {
                                adjVertex.predecessor = vertex;
                                stack.add(allAdjacent);
                                stack.add(vertex);
                                stack.add(AFTER_NEXTED_DFS_VISIT_OBJECT);
                                vertex = adjVertex;
                                state = 2;
                                continue block6;
                            }
                            if (adjVertex.color == "grey") {
                                this.cycles = true;
                            }
                            state = 3;
                            continue block6;
                        }
                        vertex.color = "black";
                        vertex.finishTime = ++this.time;
                        state = (Integer)stack.remove(stack.size() - 1);
                        continue block6;
                    }
                    case 4: {
                        Iterator unchecked;
                        vertex = (Vertex)stack.remove(stack.size() - 1);
                        allAdjacent = unchecked = (Iterator)stack.remove(stack.size() - 1);
                        state = 3;
                    }
                    default: {
                        continue block6;
                    }
                }
                break;
            }
        }

        public static class Vertex {
            public static final String WHITE = "white";
            public static final String GREY = "grey";
            public static final String BLACK = "black";
            public String color = "white";
            public Vertex predecessor = null;
            public int finishTime;
            public Object id;
            public List<Vertex> adjacent = new ArrayList<Vertex>(3);

            public Vertex(Object id) {
                this.id = id;
            }
        }
    }
}

