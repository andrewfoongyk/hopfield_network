# hopfield_network

This is an implementation in MATLAB of a simple Hopfield Network that stores small black and white images. The Hopfield Network is a simple fully connected artificial neural network. In addition, I include simple code that reads .png and .jpg images into the network.  

Introduction

The Hopfield network implemented here is a binary network that is trained using the Hebb or sum of outer products rule. The details of the network operation are taken directly from Chapter 42 of Information Theory, Inference and Learning Algorithms, by David MacKay. The network here is designed to act as an associative memory, performing unsupervised learning. First, the network is made to learn certain patterns, in this case letters. These memories are stored in the network in the form of the weights between neurons. Next the network can be used to recall memories. Beginning with a corrupted version of the original memory, the network evolves according to its activity rule to a stable state that may or may not be one of its original memories.

How to use the file

Begin by deciding the dimension of the memories you want to store. Eg, to work with 25x25 pixel binary images, set n=25. Then type 'globalmemories(n)' to initialise the weight matrix. In order to learn an image, type 'learn('imagenamehere',n,1)'. In order to 'forget' an image previously learned, type 'learn('imagenamehere',n,0)'. This may be useful if the network becomes overloaded with memories and does not recall properly. Upon learning, you will see a binary version of the image learned.

Once you have made the network learn the desired images, you can test the memory of the network. For example, you could make it learn the images a1.png and o1.jpg - an image of the letter 'A' and the letter 'O' respectively. Then you could test the network with a different, yet similar image, by typing 'test('imagenamehere',n,number of iterations)'. Doing this will display a series of images. The leftmost image will be the image that you tested, and the remaining images will show the state of the Hopfield Network after each iteration. For example, you may want to test all the images named 'otestx.jpg' and see whether they converge to the 'A' memory, the 'O' memory, or neither.

In practise, with an image size n=25 I find that the network can mostly distinguish between 'A' and 'O' if these are the only two images learned. However, if I force it to learn a third memory, 'F', then it often converges to a stable state that is a garbled mixture of the memories.

