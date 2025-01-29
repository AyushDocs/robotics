from setuptools import setup

package_name = 'talker_listener'

setup(
    name=package_name,
    version='0.0.1',
    packages=[package_name],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='Ayush Dubey',
    maintainer_email='ayushalokdubey@email.com',
    description='ROS 2 Humble Talker-Listener',
    license='Apache-2.0',
    tests_require=['pytest'],
    entry_points={
        'console_scripts': [
            'talker = talker_listener.talker:main',
            'listener = talker_listener.listener:main',
        ],
    },
)
