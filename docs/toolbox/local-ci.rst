==================
Local CI Execution
==================

Deployment
==========

* Build the image used for the Prow CI testing, and run a given command in the Pod

.. code-block:: shell

    ./run.py local-ci deploy                   \
              <ci command>                     \
              <git repository> <git reference> \
              [--tag_uid=TAG_UID]

**Example:**

.. code-block:: shell

    ./run.py local-ci deploy                          \
             "run gpu-operator test_master_branch" \
             https://github.com/openshift-psap/ci-artifacts.git master

Cleaning Up
===========

* Cleanup the resources used to deploy the test image

.. code-block:: shell

    ./run.py local-ci cleanup
