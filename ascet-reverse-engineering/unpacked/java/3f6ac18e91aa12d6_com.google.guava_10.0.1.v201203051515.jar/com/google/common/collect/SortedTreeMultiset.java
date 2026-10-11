/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractLinkedIterator;
import com.google.common.collect.AbstractSortedMultiset;
import com.google.common.collect.BoundType;
import com.google.common.collect.BstAggregate;
import com.google.common.collect.BstCountBasedBalancePolicies;
import com.google.common.collect.BstInOrderPath;
import com.google.common.collect.BstModificationResult;
import com.google.common.collect.BstModifier;
import com.google.common.collect.BstMutationResult;
import com.google.common.collect.BstMutationRule;
import com.google.common.collect.BstNode;
import com.google.common.collect.BstNodeFactory;
import com.google.common.collect.BstOperations;
import com.google.common.collect.BstPathFactory;
import com.google.common.collect.BstRangeOps;
import com.google.common.collect.BstSide;
import com.google.common.collect.GeneralRange;
import com.google.common.collect.Iterables;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.collect.Ordering;
import com.google.common.collect.SortedMultiset;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
final class SortedTreeMultiset<E>
extends AbstractSortedMultiset<E> {
    private final GeneralRange<E> range;
    private final AtomicReference<Node> rootReference;
    private final transient BstPathFactory<Node, BstInOrderPath<Node>> pathFactory = BstInOrderPath.inOrderFactory();
    private final transient BstAggregate<Node> distinctAggregate = new BstAggregate<Node>(){

        @Override
        public int entryValue(Node entry) {
            return 1;
        }

        @Override
        public int treeValue(@Nullable Node tree) {
            return SortedTreeMultiset.this.distinctOrZero(tree);
        }
    };
    private final transient BstAggregate<Node> sizeAggregate = new BstAggregate<Node>(){

        @Override
        public int entryValue(Node entry) {
            return entry.elemOccurrences;
        }

        @Override
        public int treeValue(@Nullable Node tree) {
            return SortedTreeMultiset.this.sizeOrZero(tree);
        }
    };
    private final transient BstNodeFactory<Node> nodeFactory = new BstNodeFactory<Node>(){

        @Override
        public Node createNode(Node source, @Nullable Node left, @Nullable Node right) {
            return new Node(source.getKey(), source.elemOccurrences, left, right);
        }
    };

    public static <E extends Comparable> SortedTreeMultiset<E> create() {
        return new SortedTreeMultiset(Ordering.natural());
    }

    public static <E> SortedTreeMultiset<E> create(Comparator<? super E> comparator) {
        return new SortedTreeMultiset<E>(comparator);
    }

    public static <E extends Comparable> SortedTreeMultiset<E> create(Iterable<? extends E> elements) {
        SortedTreeMultiset<E> multiset = SortedTreeMultiset.create();
        Iterables.addAll(multiset, elements);
        return multiset;
    }

    private SortedTreeMultiset(Comparator<? super E> comparator) {
        super(comparator);
        this.range = GeneralRange.all(comparator);
        this.rootReference = new AtomicReference();
    }

    private SortedTreeMultiset(GeneralRange<E> range, AtomicReference<Node> root) {
        super(range.comparator());
        this.range = range;
        this.rootReference = root;
    }

    E checkElement(Object o) {
        Preconditions.checkNotNull(o);
        return (E)o;
    }

    @Override
    int distinctElements() {
        Node root = this.rootReference.get();
        return BstRangeOps.totalInRange(this.distinctAggregate, this.range, root);
    }

    @Override
    public int size() {
        Node root = this.rootReference.get();
        return BstRangeOps.totalInRange(this.sizeAggregate, this.range, root);
    }

    @Override
    public int count(@Nullable Object element) {
        if (element == null) {
            return 0;
        }
        try {
            E e = this.checkElement(element);
            if (this.range.contains(e)) {
                Node node = (Node)BstOperations.seek(this.comparator(), (BstNode)this.rootReference.get(), e);
                return node == null ? 0 : node.elemOccurrences;
            }
            return 0;
        }
        catch (ClassCastException e) {
            return 0;
        }
    }

    private int mutate(E e, MultisetModifier modifier) {
        BstMutationRule mutationRule = BstMutationRule.createRule(modifier, BstCountBasedBalancePolicies.singleRebalancePolicy(this.distinctAggregate), this.nodeFactory);
        BstMutationResult mutationResult = BstOperations.mutate(this.comparator(), mutationRule, (BstNode)this.rootReference.get(), e);
        if (!this.rootReference.compareAndSet((Node)mutationResult.getOriginalRoot(), (Node)mutationResult.getChangedRoot())) {
            throw new ConcurrentModificationException();
        }
        Node original = (Node)mutationResult.getOriginalTarget();
        return original == null ? 0 : original.elemOccurrences;
    }

    @Override
    public int add(E element, int occurrences) {
        Preconditions.checkNotNull(element);
        if (occurrences == 0) {
            return this.count(element);
        }
        Preconditions.checkArgument(this.range.contains(element));
        return this.mutate(element, new AddModifier(occurrences));
    }

    @Override
    public int remove(@Nullable Object element, int occurrences) {
        if (element == null) {
            return 0;
        }
        if (occurrences == 0) {
            return this.count(element);
        }
        try {
            E e = this.checkElement(element);
            return this.range.contains(e) ? this.mutate(e, new RemoveModifier(occurrences)) : 0;
        }
        catch (ClassCastException e) {
            return 0;
        }
    }

    @Override
    public boolean setCount(E element, int oldCount, int newCount) {
        Preconditions.checkNotNull(element);
        Preconditions.checkArgument(this.range.contains(element));
        return this.mutate(element, new ConditionalSetCountModifier(oldCount, newCount)) == oldCount;
    }

    @Override
    public int setCount(E element, int count) {
        Preconditions.checkNotNull(element);
        Preconditions.checkArgument(this.range.contains(element));
        return this.mutate(element, new SetCountModifier(count));
    }

    @Override
    Iterator<Multiset.Entry<E>> entryIterator() {
        Node root = this.rootReference.get();
        BstInOrderPath startingPath = (BstInOrderPath)((Object)BstRangeOps.furthestPath(this.range, BstSide.LEFT, this.pathFactory, root));
        return this.iteratorInDirection(startingPath, BstSide.RIGHT);
    }

    @Override
    Iterator<Multiset.Entry<E>> descendingEntryIterator() {
        Node root = this.rootReference.get();
        BstInOrderPath startingPath = (BstInOrderPath)((Object)BstRangeOps.furthestPath(this.range, BstSide.RIGHT, this.pathFactory, root));
        return this.iteratorInDirection(startingPath, BstSide.LEFT);
    }

    private Iterator<Multiset.Entry<E>> iteratorInDirection(@Nullable BstInOrderPath<Node> start, final BstSide direction) {
        final AbstractLinkedIterator<BstInOrderPath<Node>> pathIterator = new AbstractLinkedIterator<BstInOrderPath<Node>>(start){

            @Override
            protected BstInOrderPath<Node> computeNext(BstInOrderPath<Node> previous) {
                if (!previous.hasNext(direction)) {
                    return null;
                }
                BstInOrderPath<Node> next = previous.next(direction);
                return SortedTreeMultiset.this.range.contains(((Node)next.getTip()).getKey()) ? next : null;
            }
        };
        return new Iterator<Multiset.Entry<E>>(){
            E toRemove = null;

            @Override
            public boolean hasNext() {
                return pathIterator.hasNext();
            }

            @Override
            public Multiset.Entry<E> next() {
                BstInOrderPath path = (BstInOrderPath)pathIterator.next();
                this.toRemove = ((Node)path.getTip()).getKey();
                return Multisets.immutableEntry(this.toRemove, ((Node)path.getTip()).elemOccurrences);
            }

            @Override
            public void remove() {
                Preconditions.checkState(this.toRemove != null);
                SortedTreeMultiset.this.setCount(this.toRemove, 0);
                this.toRemove = null;
            }
        };
    }

    @Override
    public void clear() {
        Node cleared;
        Node root = this.rootReference.get();
        if (!this.rootReference.compareAndSet(root, cleared = BstRangeOps.minusRange(this.range, BstCountBasedBalancePolicies.fullRebalancePolicy(this.distinctAggregate), this.nodeFactory, root))) {
            throw new ConcurrentModificationException();
        }
    }

    @Override
    public SortedMultiset<E> headMultiset(E upperBound, BoundType boundType) {
        Preconditions.checkNotNull(upperBound);
        return new SortedTreeMultiset<E>(this.range.intersect(GeneralRange.upTo(this.comparator, upperBound, boundType)), this.rootReference);
    }

    @Override
    public SortedMultiset<E> tailMultiset(E lowerBound, BoundType boundType) {
        Preconditions.checkNotNull(lowerBound);
        return new SortedTreeMultiset<E>(this.range.intersect(GeneralRange.downTo(this.comparator, lowerBound, boundType)), this.rootReference);
    }

    private int sizeOrZero(@Nullable Node node) {
        return node == null ? 0 : node.size;
    }

    private int distinctOrZero(@Nullable Node node) {
        return node == null ? 0 : node.distinct;
    }

    private final class AddModifier
    extends MultisetModifier {
        private final int countToAdd;

        private AddModifier(int countToAdd) {
            Preconditions.checkArgument(countToAdd > 0);
            this.countToAdd = countToAdd;
        }

        int newCount(int oldCount) {
            return oldCount + this.countToAdd;
        }
    }

    private final class ConditionalSetCountModifier
    extends MultisetModifier {
        private final int expectedCount;
        private final int setCount;

        private ConditionalSetCountModifier(int expectedCount, int setCount) {
            Preconditions.checkArgument(setCount >= 0 & expectedCount >= 0);
            this.expectedCount = expectedCount;
            this.setCount = setCount;
        }

        int newCount(int oldCount) {
            return oldCount == this.expectedCount ? this.setCount : oldCount;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private abstract class MultisetModifier
    implements BstModifier<E, Node> {
        private MultisetModifier() {
        }

        abstract int newCount(int var1);

        @Override
        @Nullable
        public BstModificationResult<Node> modify(E key, @Nullable Node originalEntry) {
            int newCount;
            int oldCount = originalEntry == null ? 0 : originalEntry.elemOccurrences;
            if (oldCount == (newCount = this.newCount(oldCount))) {
                return BstModificationResult.identity(originalEntry);
            }
            if (newCount == 0) {
                return BstModificationResult.rebalancingChange(originalEntry, null);
            }
            if (oldCount == 0) {
                return BstModificationResult.rebalancingChange(null, new Node(key, newCount));
            }
            return BstModificationResult.rebuildingChange(originalEntry, new Node(key, newCount));
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private final class Node
    extends BstNode<E, Node> {
        private final int elemOccurrences;
        private final int size;
        private final int distinct;

        private Node(E key, @Nullable int elemCount, @Nullable Node left, Node right) {
            super(SortedTreeMultiset.this.checkElement(key), left, right);
            Preconditions.checkArgument(elemCount > 0);
            this.elemOccurrences = elemCount;
            this.size = elemCount + SortedTreeMultiset.this.sizeOrZero(left) + SortedTreeMultiset.this.sizeOrZero(right);
            this.distinct = 1 + SortedTreeMultiset.this.distinctOrZero(left) + SortedTreeMultiset.this.distinctOrZero(right);
        }

        private Node(E key, int elemCount) {
            this(key, elemCount, null, null);
        }
    }

    private final class RemoveModifier
    extends MultisetModifier {
        private final int countToRemove;

        private RemoveModifier(int countToRemove) {
            Preconditions.checkArgument(countToRemove > 0);
            this.countToRemove = countToRemove;
        }

        int newCount(int oldCount) {
            return Math.max(0, oldCount - this.countToRemove);
        }
    }

    private final class SetCountModifier
    extends MultisetModifier {
        private final int countToSet;

        private SetCountModifier(int countToSet) {
            Preconditions.checkArgument(countToSet >= 0);
            this.countToSet = countToSet;
        }

        int newCount(int oldCount) {
            return this.countToSet;
        }
    }
}

