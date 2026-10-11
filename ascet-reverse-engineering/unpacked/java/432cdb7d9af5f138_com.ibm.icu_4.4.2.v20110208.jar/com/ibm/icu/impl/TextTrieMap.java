/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

import com.ibm.icu.lang.UCharacter;
import com.ibm.icu.text.UTF16;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TextTrieMap<V> {
    private CharacterNode root = new CharacterNode(0);
    boolean ignoreCase;

    public TextTrieMap(boolean ignoreCase) {
        this.ignoreCase = ignoreCase;
    }

    public synchronized void put(String text, V o) {
        CharacterNode node = this.root;
        int i = 0;
        while (i < text.length()) {
            int ch = UTF16.charAt(text, i);
            node = node.addChildNode(ch);
            if (UTF16.getCharCount(ch) == 2) {
                ++i;
            }
            ++i;
        }
        node.addObject(o);
    }

    public Iterator<V> get(String text) {
        return this.get(text, 0);
    }

    public Iterator<V> get(String text, int start) {
        LongestMatchHandler handler = new LongestMatchHandler();
        this.find(text, start, handler);
        return handler.getMatches();
    }

    public void find(String text, ResultHandler<V> handler) {
        this.find(text, 0, handler);
    }

    public void find(String text, int start, ResultHandler<V> handler) {
        this.find(this.root, text, start, start, handler);
    }

    private synchronized void find(CharacterNode node, String text, int start, int index, ResultHandler<V> handler) {
        Iterator itr = node.iterator();
        if (itr != null && !handler.handlePrefixMatch(index - start, itr)) {
            return;
        }
        if (index < text.length()) {
            List<CharacterNode> childNodes = node.getChildNodes();
            if (childNodes == null) {
                return;
            }
            int ch = UTF16.charAt(text, index);
            int chLen = UTF16.getCharCount(ch);
            int i = 0;
            while (i < childNodes.size()) {
                CharacterNode child = childNodes.get(i);
                if (this.compare(ch, child.getCharacter())) {
                    this.find(child, text, start, index + chLen, handler);
                    break;
                }
                ++i;
            }
        }
    }

    private boolean compare(int ch1, int ch2) {
        if (ch1 == ch2) {
            return true;
        }
        if (this.ignoreCase) {
            if (UCharacter.toLowerCase(ch1) == UCharacter.toLowerCase(ch2)) {
                return true;
            }
            if (UCharacter.toUpperCase(ch1) == UCharacter.toUpperCase(ch2)) {
                return true;
            }
        }
        return false;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class CharacterNode {
        int character;
        List<CharacterNode> children;
        List<V> objlist;

        public CharacterNode(int ch) {
            this.character = ch;
        }

        public int getCharacter() {
            return this.character;
        }

        public void addObject(V obj) {
            if (this.objlist == null) {
                this.objlist = new LinkedList();
            }
            this.objlist.add(obj);
        }

        public Iterator<V> iterator() {
            if (this.objlist == null) {
                return null;
            }
            return this.objlist.iterator();
        }

        public CharacterNode addChildNode(int ch) {
            if (this.children == null) {
                this.children = new ArrayList<CharacterNode>();
                CharacterNode newNode = new CharacterNode(ch);
                this.children.add(newNode);
                return newNode;
            }
            CharacterNode node = null;
            int i = 0;
            while (i < this.children.size()) {
                CharacterNode cur = this.children.get(i);
                if (TextTrieMap.this.compare(ch, cur.getCharacter())) {
                    node = cur;
                    break;
                }
                ++i;
            }
            if (node == null) {
                node = new CharacterNode(ch);
                this.children.add(node);
            }
            return node;
        }

        public List<CharacterNode> getChildNodes() {
            return this.children;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class LongestMatchHandler<V>
    implements ResultHandler<V> {
        private Iterator<V> matches = null;
        private int length = 0;

        private LongestMatchHandler() {
        }

        @Override
        public boolean handlePrefixMatch(int matchLength, Iterator<V> values) {
            if (matchLength > this.length) {
                this.length = matchLength;
                this.matches = values;
            }
            return true;
        }

        public Iterator<V> getMatches() {
            return this.matches;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface ResultHandler<V> {
        public boolean handlePrefixMatch(int var1, Iterator<V> var2);
    }
}

